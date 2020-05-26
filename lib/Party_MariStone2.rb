def hero_MariStone2(seed_type: :rand)
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

def mari_MariStone2(seed_type: :rand, mari_lv11: false)
  Game_Actor.new(
    name: "マ",
    status: Actor_Status[mari_lv11 ? :Mari_lv11 : :Mari_lv10],
    seed_type: seed_type,

    equipments: {
      # 毒刀
      atk: 23,
      # 身服、シト、兎耳、祈輪
      def: 28 + 15 + 15 + 5,
      agi: 0,
      # 身服のみかわし率
      eva: 1r/6,
    },
    # seeds: { mhp: 2, mmp: 1, atk: 0, def: 3, agi: 0, },
    seeds: { mhp: 1, mmp: 1, atk: 0, def: 3, agi: 0, },
    inventory: { Herb: 1.0/0, Leaf: 1 },
  )
end

def gabo_MariStone2(seed_type: :rand)
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
    # seeds: { mhp: 0, mmp: 2, atk: 0, def: 0, agi: 4, },
    seeds: { mhp: 1, mmp: 2, atk: 0, def: 0, agi: 4, },
    inventory: { Herb: 3, Leaf: 0 },
  )
end

Party_MariStone2 = ->seed_type: :rand, mari_lv11: false{
  hero = hero_MariStone2(seed_type: seed_type)
  mari = mari_MariStone2(seed_type: seed_type, mari_lv11: mari_lv11)
  gabo = gabo_MariStone2(seed_type: seed_type)

  Game_Party_Pingval.new(gabo, hero, mari, npc_Kasim)
}
