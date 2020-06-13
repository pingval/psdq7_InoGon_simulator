# Game_Party_Pingval を元に、
# - 全員がほぼ満タンの場合、3列目も殴る
# - 「2列目がマヌーサ状態・3列目がマヌーサ状態でない・2列目が薬草を所持」の場合、2列目が回復し3列目が殴る。
class Game_Party_Pingval_GaboAttack < Game_Party
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

    # 予約葉っぱ有効
    lookahead_leaf_enabled = true

    case [a.alive?, b.alive?, c.alive?]
    when [ true,  true,  true]
      # 1列目が瀕死かつ葉っぱを使ってよさそうな場合、予約葉っぱ
      cond_b = b.has?(:Leaf) && b.safe?
      cond_c = c.has?(:Leaf)
      if lookahead_leaf_enabled && a.dying? && (cond_b || cond_c)
        damaged_actor = [b, c].max_by{|actor| actor.dmg }
        if cond_b
          b.set(:Leaf, a)
          if damaged_actor.dmg > abc_first_herb_dmg
            c.set(:Herb, damaged_actor)
          else
            c.set(:Herb, b)
          end
        else
          c.set(:Leaf, a)
          if b.hp < abc_b_guard_hp
            b.set(:Guard)
          elsif damaged_actor.dmg > abc_second_herb_dmg && b.has?(:Herb)
            b.set(:Herb, damaged_actor)
          elsif b.blind? && !b.safe?
            b.set(:Guard)
          else
            b.set(:Boomerang)
          end
        end
      else
        damaged_actor = alive_actors.max_by{|actor| actor.dmg }
        # ガボ殴り戦術: 全員ほぼまんたんなら2,3列目殴り
        if damaged_actor.dmg <= abc_first_herb_dmg
          b.set(:Boomerang)
          c.set(:Boomerang)
        else
          # 3列目
          c.set(:Herb, damaged_actor)
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
              elsif !c.has?(:Leaf) && damaged_actor == b && damaged_actor_dmg > 0
                b.set(:Guard)
              elsif b.blind? && !c.blind? && b.has?(:Herb)
                # ガボ殴り戦術: 2,3列目の役割交換！
                b.set(:Herb, damaged_actor)
                c.set(:Boomerang)
              elsif b.blind? && damaged_actor == b && damaged_actor_dmg > 0
                b.set(:Guard)
              else
                b.set(:Boomerang)
              end
            ensure
              damaged_actor.hp = damaged_actor_hp
            end
          end
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
      # 2列目しか葉を持っていない場合を含む
      if b.has?(:Leaf) && b.safe?
        b.set(:Leaf, a)
        c.set(:Herb, b)
      elsif c.has?(:Leaf)
        if b.dying?
          b.has?(:Herb) ? b.set(:Herb, b) : b.set(:Boomerang)
        else
          b.set(:Guard)
        end
        c.set(:Leaf, a)
      else
        damaged_actor = alive_actors.max_by{|actor| actor.dmg }
        if damaged_actor.dmg > bc_first_herb_dmg
          c.set(:Herb, damaged_actor)
        else
          c.set(:Herb, b)
        end

        # 2列目が葉っぱを持っている場合、使える状況になるまで防御
        if b.hp < bc_b_guard_hp || b.has?(:Leaf)
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
            elsif (!c.has?(:Leaf) && damaged_actor == b && damaged_actor_dmg > 0)
              b.set(:Guard)
            elsif b.blind? && !c.blind? && b.has?(:Herb)
              # ガボ殴り戦術: 2,3列目の役割交換！
              b.set(:Herb, damaged_actor)
              c.set(:Boomerang)
            elsif b.blind?
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
