# from https://www.twitch.tv/videos/256547523
def hero_Ketta1249(seed_type: :rand)
  Game_Actor.new(
    name: "主",
    status: Actor_Status[:Hero_lv10],
    seed_type: seed_type,

    equipments: {
      # 刃ブ、スピ
      atk: 26 + 1,
      # 鉄胸、鉄盾、木帽
      def: 26 + 13 + 6,
      agi: 0,
      eva: 0,
    },
    seeds: { mhp: 2, mmp: 0, atk: 5, def: 2, agi: 0, },
    inventory: { Herb: 6, Leaf: 1 },
  )
end

def mari_Ketta1249(seed_type: :rand, mari_lv11: false)
  Game_Actor.new(
    name: "マ",
    status: Actor_Status[mari_lv11 ? :Mari_lv11 : :Mari_lv10],
    seed_type: seed_type,

    equipments: {
      atk: 0,
      # 毛マ、シト、兎耳
      def: 18 + 15 + 15,
      agi: 0,
      eva: 0,
    },
    seeds: { mhp: 1, mmp: 1, atk: 0, def: 1, agi: 0, },
    inventory: { Herb: 9, Leaf: 0 },
  )
end

def gabo_Ketta1249(seed_type: :rand)
  Game_Actor.new(
    name: "ガ",
    status: Actor_Status[:Gabo_lv4],
    seed_type: seed_type,

    equipments: {
      # 刃ブ
      atk: 26,
      # 派服、キ盾、貝帽、祈輪
      def: 28 + 9 + 8 + 5,
      agi: 0,
      eva: 0,
    },
    seeds: { mhp: 1, mmp: 0, atk: 0, def: 1, agi: 4, },
    inventory: { Herb: 1.0/0, Leaf: 1 },
  )
end

Party_Ketta1249 = ->seed_type: :rand, mari_lv11: false{
  hero = hero_Ketta1249(seed_type: seed_type)
  mari = mari_Ketta1249(seed_type: seed_type, mari_lv11: mari_lv11)
  gabo = gabo_Ketta1249(seed_type: seed_type)

  Game_Party_Pingval.new(mari, hero, gabo, npc_Kasim)
}

Party_Ketta1249_GA = ->seed_type: :rand, mari_lv11: false{
  hero = hero_Ketta1249(seed_type: seed_type)
  mari = mari_Ketta1249(seed_type: seed_type, mari_lv11: mari_lv11)
  gabo = gabo_Ketta1249(seed_type: seed_type)

  Game_Party_Pingval_GaboAttack.new(mari, hero, gabo, npc_Kasim)
}
