def hero_FourSpiritsRou1609(seed_type: :rand)
  Game_Actor.new(
    name: "主",
    status: Actor_Status[:Hero_lv10],
    seed_type: seed_type,

    equipments: {
      # 刃ブ、スピ
      atk: 26 + 1,
      # 派服、鉄盾、貝帽
      def: 28 + 13 + 8,
      agi: 0,
      eva: 0,
    },
    seeds: { mhp: 3, mmp: 0, atk: 7, def: 2, agi: 0, },
    inventory: { Herb: 6, Leaf: 1 },
  )
end

def mari_FourSpiritsRou1609(seed_type: :rand, mari_lv11: false)
  Game_Actor.new(
    name: "マ",
    status: Actor_Status[mari_lv11 ? :Mari_lv11 : :Mari_lv10],
    seed_type: seed_type,

    equipments: {
      # 毒刀
      atk: 23,
      # 毛マ、シト、兎耳、祈輪
      def: 18 + 15 + 15 + 5,
      agi: 0,
      eva: 0,
    },
    seeds: { mhp: 1, mmp: 1, atk: 0, def: 3, agi: 0, },
    inventory: { Herb: 7, Leaf: 0 },
  )
end

def gabo_FourSpiritsRou1609(seed_type: :rand)
  Game_Actor.new(
    name: "ガ",
    status: Actor_Status[:Gabo_lv4],
    seed_type: seed_type,

    equipments: {
      # 刃ブ
      atk: 26,
      # 身服、キ盾、毛フ
      def: 28 + 9 + 11,
      agi: 0,
      # 身服のみかわし率
      eva: 1r/6,
    },
    seeds: { mhp: 1, mmp: 0, atk: 0, def: 1, agi: 5, },
    inventory: { Herb: 1.0/0, Leaf: 1 },
  )
end

Party_FourSpiritsRou1609 = ->seed_type: :rand, mari_lv11: false{
  hero = hero_FourSpiritsRou1609(seed_type: seed_type)
  mari = mari_FourSpiritsRou1609(seed_type: seed_type, mari_lv11: mari_lv11)
  gabo = gabo_FourSpiritsRou1609(seed_type: seed_type)

  Game_Party_Pingval.new(mari, hero, gabo, npc_Kasim)
}

Party_FourSpiritsRou1609_GA = ->seed_type: :rand, mari_lv11: false{
  hero = hero_FourSpiritsRou1609(seed_type: seed_type)
  mari = mari_FourSpiritsRou1609(seed_type: seed_type, mari_lv11: mari_lv11)
  gabo = gabo_FourSpiritsRou1609(seed_type: seed_type)

  Game_Party_Pingval_GaboAttack.new(mari, hero, gabo, npc_Kasim)
}
