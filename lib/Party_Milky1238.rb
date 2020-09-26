# https://www.twitch.tv/videos/747912630
def hero_Milky1238(seed_type: :rand)
  Game_Actor.new(
    name: "主",
    status: Actor_Status[:Hero_lv10],
    seed_type: seed_type,

    equipments: {
      # 刃ブ
      atk: 26,
      # 派服、鉄盾、貝帽
      def: 28 + 13 + 8,
      agi: 0,
      eva: 0,
    },
    seeds: { mhp: 2, mmp: 0, atk: 5, def: 2, agi: 0, },
    inventory: { Herb: 7, Leaf: 1 },
  )
end

def mari_Milky1238(seed_type: :rand, mari_lv11: false)
  Game_Actor.new(
    name: "マ",
    status: Actor_Status[mari_lv11 ? :Mari_lv11 : :Mari_lv10],
    seed_type: seed_type,

    equipments: {
      atk: 0,
      # 身服、シト、兎耳、祈輪
      def: 28 + 15 + 15 + 5,
      agi: 0,
      # 身服のみかわし率
      eva: 1r/6,
    },
    seeds: { mhp: 2, mmp: 1, atk: 0, def: 3, agi: 0, },
    inventory: { Herb: 8, Leaf: 0 },
  )
end

def gabo_Milky1238(seed_type: :rand)
  Game_Actor.new(
    name: "ガ",
    status: Actor_Status[:Gabo_lv4],
    seed_type: seed_type,

    equipments: {
      # 刃ブ
      atk: 26,
      # 毛マ、尖帽
      def: 18 + 5,
      agi: 0,
      eva: 0,
    },
    seeds: { mhp: 0, mmp: 0, atk: 0, def: 0, agi: 4, },
    inventory: { Herb: 1.0/0, Leaf: 1 },
  )
end

Party_Milky1238 = ->seed_type: :rand, mari_lv11: false{
  hero = hero_Milky1238(seed_type: seed_type)
  mari = mari_Milky1238(seed_type: seed_type, mari_lv11: mari_lv11)
  gabo = gabo_Milky1238(seed_type: seed_type)

  Game_Party_Pingval.new(mari, hero, gabo, npc_Kasim)
}

Party_Milky1238_GA = ->seed_type: :rand, mari_lv11: false{
  hero = hero_Milky1238(seed_type: seed_type)
  mari = mari_Milky1238(seed_type: seed_type, mari_lv11: mari_lv11)
  gabo = gabo_Milky1238(seed_type: seed_type)

  Game_Party_Pingval_GaboAttack.new(mari, hero, gabo, npc_Kasim)
}
