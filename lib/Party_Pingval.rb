# from https://github.com/pingval/DQ7/blob/master/pingval-psdq7-Aira183-chart.txt#L1649
# 実際はいろいろ違う
class Game_Party_Pingval < Game_Party
  def set_actions
    a, b, c = actors

    abc_hero_guard_dmg = c.has?(:Leaf) ? 50 : 40
    bc_hero_guard_dmg = 30

    case [a.alive?, b.alive?, c.alive?]
    when [ true,  true,  true]
      # 3番目
      damaged_actor = alive_actors.min_by{|actor| -actor.dmg }
      if damaged_actor.dmg > 10
        c.set(:Herb, damaged_actor)
      elsif !c.has?(:Leaf)
        c.set(:Herb, b)
      else
        c.set(:Herb, a)
      end
      # 2番目
      if b.dmg > abc_hero_guard_dmg
        b.set(:Guard)
      else
        damaged_actor_hp = damaged_actor.hp
        damaged_actor_dmg = damaged_actor.dmg
        begin
          # 一時的に回復して2人目の回復対象を選択
          damaged_actor.hp = (damaged_actor.hp + 35).clamp(0, damaged_actor.mhp)
          damaged_actor2 = alive_actors.min_by{|actor| -actor.dmg }
          if damaged_actor2.dmg > 15 && b.has?(:Herb)
            b.set(:Herb, damaged_actor2)
          elsif ((b.blind? && damaged_actor == b && damaged_actor_dmg > 0) ||
                 (!c.has?(:Leaf) && damaged_actor == b && damaged_actor_dmg > 0))
            b.set(:Guard)
          else
            b.set(:Boomerang)
          end
        ensure
          damaged_actor.hp = damaged_actor_hp
        end
      end
      # 1番目
      if a.dying?
        a.has?(:Herb) ? a.set(:Herb, a) : a.set(:Attack, a.opponents_unit.lowest_hp_member)
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
      # if c.has?(:Leaf)
      #   b.set(:Guard)
      #   c.set(:Leaf, a)
      # elsif b.has?(:Leaf)
      #   b.set(:Leaf, a)
      #   c.set(:Herb, b)
      if b.has?(:Leaf) && b.safe?
        b.set(:Leaf, a)
        c.set(:Herb, b)
      elsif c.has?(:Leaf)
        b.set(:Guard)
        c.set(:Leaf, a)
      else
        damaged_actor = alive_actors.min_by{|actor| -actor.dmg }
        if damaged_actor.dmg > 30
          c.set(:Herb, damaged_actor)
        else
          c.set(:Herb, b)
        end

        if b.dmg > bc_hero_guard_dmg
          b.set(:Guard)
        else
          damaged_actor_hp = damaged_actor.hp
          damaged_actor_dmg = damaged_actor.dmg
          begin
            # 一時的に回復して2人目の回復対象を選択
            damaged_actor.hp = (damaged_actor.hp + 35).clamp(0, damaged_actor.mhp)
            damaged_actor2 = alive_actors.min_by{|actor| -actor.dmg }
            if damaged_actor2.dmg > 15 && b.has?(:Herb)
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
        a.has?(:Herb) ? a.set(:Herb, a) : a.set(:Attack, a.opponents_unit.lowest_hp_member)
      else
        a.set(:Guard)
      end
      a.set(:Herb, c) if c.dying? && a.has?(:Herb)

    when [ true,  true, false]
      if b.has?(:Leaf)
        b.set(:Leaf, c)
      else
        if b.safe?
          if a.dmg > 15 && b.has?(:Herb)
            b.set(:Herb, a)
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
        a.has?(:Herb) ? a.set(:Herb, a) : a.set(:Attack, a.opponents_unit.lowest_hp_member)
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
        b.set(:Guard)
        if b.dying?
          b.has?(:Herb) ? b.set(:Herb, b) : b.set(:Boomerang)
        end
      end

    when [ true, false, false]
      if a.dying?
        a.has?(:Herb) ? a.set(:Herb, a) : a.set(:Attack, a.opponents_unit.lowest_hp_member)
      else
        a.set(:Guard)
      end
    end
  end
end

Party_Pingval = ->seed_type: :rand, mari_lv11: false{
  hero = hero_Panda(seed_type: seed_type)
  mari = mari_Panda(seed_type: seed_type, mari_lv11: mari_lv11)
  gabo = gabo_Panda(seed_type: seed_type)

  Game_Party_Pingval.new(gabo, hero, mari, npc_Kasim)
}
