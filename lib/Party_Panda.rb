# https://harapan.exblog.jp/15510551/
# > 戦術はガ主マの順で
# > 全快or1発分被ダメ時：防御、攻撃、石→ガ
# > 2発分被ダメ時：防御、薬草or防御(自身に2発分)、石→誰か　回復は自分が被ダメしてる時は自分でする
# > が基本。例外は、ガボor主人公は瀕死で防御しても耐えられない時のみ自身に薬草、
# > 砂煙が主人公に入ったら切れるまで防御、蘇生はマリベルの葉から使用、マリベルの世界樹を使った場合は石先読みの対象を主人公に変更する、辺りか。
# 実際はたぶんいろいろ違う
class Game_Party_Panda < Game_Party
  def set_actions
    a, b, c = actors

    # 最初の(奇跡の石の)回復基準被ダメ
    abc_first_herb_dmg = 5
    # 2番目の(2列目による)回復基準被ダメ
    abc_second_herb_dmg = 10
    # 2列目の防御基準HP
    abc_b_guard_hp = c.has?(:Leaf) ? 30 : 45

    bc_first_herb_dmg = 15
    bc_second_herb_dmg = abc_second_herb_dmg
    bc_b_guard_hp = 55

    ab_first_herb_dmg = 10

    case [a.alive?, b.alive?, c.alive?]
    when [ true,  true,  true]
      # 3列目
      damaged_actor = alive_actors.max_by{|actor| actor.dmg }
      if damaged_actor.dmg > abc_first_herb_dmg
        c.set(:Herb, damaged_actor)
      elsif !c.has?(:Leaf)
        c.set(:Herb, b)
      else
        c.set(:Herb, a)
      end
      # 2列目
      if b.hp < abc_b_guard_hp
        b.set(:Guard)
      else
        damaged_actor_hp = damaged_actor.hp
        damaged_actor_dmg = damaged_actor.dmg
        begin
          # 石対象を一時的に回復して、2列目の回復対象を選択
          damaged_actor.hp += 35
          damaged_actor2 = alive_actors.max_by{|actor| actor.dmg }
          if damaged_actor2.dmg > abc_second_herb_dmg && b.has?(:Herb)
            b.set(:Herb, damaged_actor2)
          elsif b.blind? || (!c.has?(:Leaf) && damaged_actor == b && damaged_actor_dmg > 0)
            b.set(:Guard)
          else
            b.set(:Boomerang)
          end
        ensure
          damaged_actor.hp = damaged_actor_hp
        end
      end
      # 1列目
      if a.dying?
        a.has?(:Herb) ? a.set(:Herb, a) : a.set(:Attack, a.opponents_unit.min_hp_member)
      else
        a.set(:Guard)
      end
      if b.dying?
        b.has?(:Herb) ? b.set(:Herb, b) : b.set(:Boomerang)
      end
      c.set(:Herb, c) if c.dying?
      # なるべく自分自身を回復するように
      if b.current_action.item == :Herb && c.current_action.item == :Herb
        if b.current_action.targets[0] == c || c.current_action.targets[0] == b
          b.current_action.targets[0], c.current_action.targets[0] = c.current_action.targets[0], b.current_action.targets[0]
        end
      end

    when [false,  true,  true]
      if c.has?(:Leaf)
        if b.dying?
          b.has?(:Herb) ? b.set(:Herb, b) : b.set(:Boomerang)
        else
          b.set(:Guard)
        end
        c.set(:Leaf, a)
      elsif b.has?(:Leaf)
        b.set(:Leaf, a)
        c.set(:Herb, b)
      else
        damaged_actor = alive_actors.max_by{|actor| actor.dmg }
        if damaged_actor.dmg > bc_first_herb_dmg
          c.set(:Herb, damaged_actor)
        else
          c.set(:Herb, b)
        end

        if b.hp < bc_b_guard_hp
          b.set(:Guard)
        else
          damaged_actor_hp = damaged_actor.hp
          damaged_actor_dmg = damaged_actor.dmg
          begin
            # 石対象を一時的に回復して、2列目の回復対象を選択
            damaged_actor.hp += 35
            damaged_actor2 = alive_actors.max_by{|actor| actor.dmg }
            if damaged_actor2.dmg > bc_second_herb_dmg && b.has?(:Herb)
              b.set(:Herb, damaged_actor2)
            elsif b.blind? || (!c.has?(:Leaf) && damaged_actor == b && damaged_actor_dmg > 0)
              b.set(:Guard)
            else
              b.set(:Boomerang)
            end
          ensure
            damaged_actor.hp = damaged_actor_hp
          end
        end
        if b.dying?
          b.has?(:Herb) ? b.set(:Herb, b) : b.set(:Boomerang)
        end
        c.set(:Herb, c) if c.dying?

        if b.current_action.item == :Herb && c.current_action.item == :Herb
          if b.current_action.targets[0] == c || c.current_action.targets[0] == b
            b.current_action.targets[0], c.current_action.targets[0] = c.current_action.targets[0], b.current_action.targets[0]
          end
        end
      end

    when [ true, false,  true]
      if c.has?(:Leaf)
        c.set(:Leaf, b)
      elsif a.dmg > c.dmg
        c.set(:Herb, a)
      else
        c.set(:Herb, c)
      end
      if a.dying?
        a.has?(:Herb) ? a.set(:Herb, a) : a.set(:Attack, a.opponents_unit.min_hp_member)
      else
        a.set(:Guard)
      end

    when [ true,  true, false]
      if b.has?(:Leaf)
        b.set(:Leaf, c)
      else
        if b.safe?
          if a.dmg > ab_first_herb_dmg && b.has?(:Herb)
            b.set(:Herb, a)
          elsif b.blind?
            b.set(:Guard)
          else
            b.set(:Boomerang)
          end
        else
          b.set(:Guard)
        end
        if b.dying?
          b.has?(:Herb) ? b.set(:Herb, b) : b.set(:Boomerang)
        end
      end
      if a.dying?
        a.has?(:Herb) ? a.set(:Herb, a) : a.set(:Attack, a.opponents_unit.min_hp_member)
      else
        a.set(:Guard)
      end

    when [false, false,  true]
      if c.has?(:Leaf)
        c.set(:Leaf, b)
      else
        c.set(:Guard)
        c.set(:Herb, c) if c.dying?
      end

    when [false,  true, false]
      if b.has?(:Leaf)
        b.set(:Leaf, c)
      else
        if b.dying?
          b.has?(:Herb) ? b.set(:Herb, b) : b.set(:Boomerang)
        else
          b.set(:Guard)
        end
      end

    when [ true, false, false]
      if a.dying?
        a.has?(:Herb) ? a.set(:Herb, a) : a.set(:Attack, a.opponents_unit.min_hp_member)
      else
        a.set(:Guard)
      end
    end
  end
end

def hero_Panda(seed_type: :rand)
  Game_Actor.new(
    name: "主",
    status: Actor_Status[:Hero_lv10],
    seed_type: seed_type,

    equipments: {
      # 刃ブ、スピ
      atk: 26 + 1,
      # 派服、鉄盾、貝帽
      def: 28 + 13 + 8,
      # # 派服、鉄盾、鉄兜
      # def: 28 + 13 + 16,
      agi: 0,
      eva: 0,
    },
    seeds: { mhp: 2, mmp: 0, atk: 6, def: 2, agi: 0, },
    inventory: { Herb: 7, Leaf: 1 },
  )
end

def mari_Panda(seed_type: :rand, mari_lv11: false)
  Game_Actor.new(
    name: "マ",
    status: Actor_Status[mari_lv11 ? :Mari_lv11 : :Mari_lv10],
    seed_type: seed_type,

    equipments: {
      # 毒刀
      atk: 23,
      # 身服、シト、兎耳、祈輪、守種2の期待値
      def: 28 + 15 + 15 + 5 + 3,
      agi: 0,
      # 身服のみかわし率
      eva: 1r/6,
    },
    # 本当は守種3 or 4
    seeds: { mhp: 2, mmp: 1, atk: 0, def: 1, agi: 0, },
    inventory: { Herb: 1.0/0, Leaf: 1 },
  )
end

def gabo_Panda(seed_type: :rand)
  Game_Actor.new(
    name: "ガ",
    status: Actor_Status[:Gabo_lv4],
    seed_type: seed_type,

    equipments: {
      # 鉄爪
      atk: 21,
      # 毛マ、キ盾、尖帽
      def: 18 + 9 + 5,
      # # 毛マ、キ盾、貝帽
      # def: 18 + 9 + 8,
      agi: 0,
      eva: 0,
    },
    seeds: { mhp: 0, mmp: 2, atk: 0, def: 0, agi: 4, },
    inventory: { Herb: 3, Leaf: 0 },
  )
end

Party_Panda = ->seed_type: :rand, mari_lv11: false{
  hero = hero_Panda(seed_type: seed_type)
  mari = mari_Panda(seed_type: seed_type, mari_lv11: mari_lv11)
  gabo = gabo_Panda(seed_type: seed_type)

  Game_Party_Panda.new(gabo, hero, mari, npc_Kasim)
}
