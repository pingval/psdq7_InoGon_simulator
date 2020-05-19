$>.sync = true

Lib_Dir = "./lib"
RGSS3_Dir = "./lib/RGSS3"
RGSS3_Require_Order = %w[
  Game_Action
  Game_ActionResult
  Game_BattlerBase
  Game_Battler
  Game_Actor
  Game_Enemy
  Game_NPC
  Game_Unit
  Game_Party
  Game_Troop
  BattlerManager
  Scene_Battle
]

RGSS3_Require_Order.each{|basename|
  rb = File.join(RGSS3_Dir, basename)
  require rb
}
Dir.glob(File.join(Lib_Dir, "*.rb")){|rb|
  require rb
}

# ログ
def log(str, timing)
  tbl = %i[none battle turn action result]
  idx = tbl.index(timing)
  return if tbl.index($option[:log_timing]) < idx
  pre = idx < 1 ? "" : "  " * (idx - 1)
  puts pre + str
end

Label_Width = 30
def f(depth, label, datas = [], comment = "")
  l = label.ljust(Label_Width - depth * 2)
  r = datas.map{|s| "%10s"%s } * ""
  comment = " ; " + comment if !comment.empty?
  puts ("  " * depth + l + r).rstrip + comment
end

# パーティを出力
def puts_party(party)
  puts "* Party"

  actors = party.actors
  f(1, "", (1..actors.size).map{|i| "No.#{i}" })
  f(1, "Status")
  f(2, "Max HP", actors.map{|a| a.mhp })
  f(2, "Max MP", actors.map{|a| a.mmp })
  f(2, "Atk", actors.map{|a| a.atk })
  f(2, "Def", actors.map{|a| a.def })
  f(2, "Agi", actors.map{|a| a.agi })
  f(2, "Eva", actors.map{|a| "%.2f%%"%[a.eva*100] }, "みかわし率")

  f(1, "Item")
  f(2, "Herb", actors.map{|a| a.inventory[:Herb] }, "薬草")
  f(2, "Leaf", actors.map{|a| a.inventory[:Leaf] }, "世界樹の葉")

  g = ->pre{
    actors.map{|a|
      l = a.send(pre + "_min")
      r = a.send(pre + "_max")
      "%s%2d..%s%2d"%[l < a.mhp ? "" : "*", l, r < a.mhp ? "" : "*", r]
    }
  }
  f(1, "Damage Range", [], "被ダメージ範囲(\"*\"つきは最大HPでも耐えない)")
  f(2, "Inopp")
  f(3, "Attack", g["ino_attack"], "攻撃")
  f(3, "Fury", g["ino_fury"], "武器を振り回す")
  f(3, "BrutalHit", g["ino_brut"], "痛恨の一撃")
  f(2, "Gonz")
  f(3, "Attack", g["gon_attack"])
  f(3, "Tail/Claw", g["gon_fury"], "尻尾/爪できりさく")
  f(3, "BrutalHit", g["gon_brut"])
  puts
end

# アイテムを出力
def puts_inventory(party)
  actors = party.actors

  f(1, "", (1..actors.size).map{|i| "No.#{i}" })
  f(1, "Item on battle end")
  f(2, "Herb", actors.map{|a|
    next a.inventory[:Herb] if a.inventory[:Herb] > 100
    first = a.first_inventory[:Herb]
    last = a.inventory[:Herb]
    diff = first - last
    "(%d-%d=)%d" % [first, diff, last]
  }, "薬草")
  f(2, "Leaf", actors.map{|a|
    first = a.first_inventory[:Leaf]
    last = a.inventory[:Leaf]
    diff = first - last
    "(%d-%d=)%d" % [first, diff, last]
  }, "世界樹の葉")
end

# 結果
$result = {}

# 結果を集計
def tally_result(*keys)
  keys.each{|key|
    h = $result[key] ||= {}
    h[:turn_count] ||= 0
    h[:turn_count] += $game_troop.turn_count
    party_leaf_count = 0
    h[:leaf_distribution] ||= {}
    $game_party.actors.each_with_index{|actor, i|
      h[:party] ||= {}
      h[:party][i] ||= Hash.new 0
      h[:party][i][:death_count] += actor.death_count
      h[:party][i][:dead] += actor.dead? ? 1 : 0
      h[:party][i][:hp] += actor.hp
      h[:party][i][:herb_count] += actor.first_inventory[:Herb] - actor.inventory[:Herb]
      leaf_count = actor.first_inventory[:Leaf] - actor.inventory[:Leaf]
      party_leaf_count += leaf_count
      h[:party][i][:leaf_count] += leaf_count
    }
    h[:leaf_distribution][party_leaf_count] ||= 0
    h[:leaf_distribution][party_leaf_count] += 1
    $game_troop.members.each_with_index{|enemy, i|
      h[:troop] ||= {}
      h[:troop][i] ||= Hash.new 0
      h[:troop][i][:dead] += enemy.dead? ? 1 : 0
      h[:troop][i][:hp] += enemy.hp
    }
  }
end

# 結果を出力
def puts_result(key, total)
  h = $result[key]
  f(0, "* " + key.to_s.capitalize)
  f(1, "Ave. turn count: %.2f" % [h[:turn_count].fdiv(total)])
  f(1, "Party:")
  f(2, "", h[:party].keys.map{|i| "No.#{i+1}" })
  tbl = {
    dead: "Death rate on battle end",
    hp: "Ave. HP on battle end",
    herb_count: "Ave. Herb count",
    leaf_count: "Ave. Leaf count",
  }
  f(2, "Ave. death count", h[:party].size.times.map{|i|
    "%.2f"%h[:party][i][:death_count].fdiv(total)
  })
  f(2, "Death rate on battle end", h[:party].size.times.map{|i|
    "%.2f%%"%[h[:party][i][:dead].fdiv(total) * 100]
  })
  f(2, "Ave. HP on battle end", h[:party].size.times.map{|i|
    "%.2f"%h[:party][i][:hp].fdiv(total)
  })
  f(2, "Ave. Herb count", h[:party].size.times.map{|i|
    "%.2f"%h[:party][i][:herb_count].fdiv(total)
  })
  f(2, "Ave. Leaf count", h[:party].size.times.map{|i|
    "%.2f"%h[:party][i][:leaf_count].fdiv(total)
  })

  f(1, "Distribution of Leaf count:", [], "世界樹の葉消費数の分布")
  leaf_distribution_sum = 0
  h[:leaf_distribution].sort.each{|leaf_count, n|
    f(2, "%5d%9.2f%%"%[leaf_count, n.fdiv(total) * 100])
    leaf_distribution_sum += leaf_count * n
  }
  f(2, "Ave. %10.2f"%[leaf_distribution_sum.fdiv(total)])

  f(1, "Troop:")
  f(2, "", h[:troop].keys.map{|i| "No.#{i+1}" })
  f(2, "Death rate on battle end", h[:troop].size.times.map{|i|
    "%.2f%%"%[h[:troop][i][:dead].fdiv(total) * 100]
  })
  f(2, "Ave. HP on battle end", h[:troop].size.times.map{|i|
    "%.2f"%h[:troop][i][:hp].fdiv(total)
  })
  puts
end

def main
  $result.clear
  
  win = 0
  # ログを出力するなら勝手にN=1に変更
  if $option[:log_timing] != :none
    $option[:N] = 1
  end

  # オプション
  puts "N: #{$option[:N]}"
  puts "Log Timing: %s" % [$option[:log_timing]]
  puts
  # パスは消しとこう
  party_s = $option[:party].to_s.sub(/ .*\//, " ")
  puts "Party: %s" % [party_s]
  puts "Maribel's Level: %2d" % [$option[:mari_lv11] ? 11 : 10]
  puts "Seed Type: %s" % [$option[:seed_type]]
  puts

  $option[:N].times{|i|
    $game_troop = troop_InoGon
    $game_party = $option[:party][seed_type: $option[:seed_type], mari_lv11: $option[:mari_lv11]]
    if i == 0
      tmp_party = if $option[:N] == 1
        $game_party
      else
        # 種の上昇値(seed_type)がminでもmaxでもなければ、ave(平均値)として出力。
        st = :ave if !%i[min max].include?($option[:seed_type])
        $option[:party][seed_type: st, mari_lv11: $option[:mari_lv11]]
      end
      puts_party(tmp_party)
    end

    # パーティや敵の状態をいろいろやる
    if $option[:callback]
      $option[:callback][]
    end

    scene = Scene_Battle.new
    case scene.test
    when :win
      tally_result(:win)
      win += 1
    when :lose
      tally_result(:lose)
    end
    tally_result(:both)
  }

  # 結果
  if $option[:N] == 1
    puts
    puts_inventory($game_party)
  else
    puts "Win rate:\t%.2f%%" % [win.fdiv($option[:N]) * 100]
    puts_result(:win, win)
    puts_result(:lose, $option[:N] - win)
    puts_result(:both, $option[:N])
  end
end

# if ARGV.size < 1
#   puts "Usage: #{File.basename(__FILE__, ".*")} party [N=100000]"
# end

# log_timing: none, battle, turn, action, result
$option = {
  N: 1000,
  log_timing: :none,
  party: Party_Pingval,
  mari_lv11: false,
  seed_type: :rand,
  callback: ->{
    # a, b, c = $game_party.actors
    # b.inventory[:Leaf] = 0
    # c.inventory[:Leaf] = 0
  },
}

main()
