# マ:身服＞主:鱗鎧＞ガ:派服
def hero_GaboStone2(seed_type: :rand)
  Game_Actor.new(
    name: "主",
    status: Actor_Status[:Hero_lv10],
    seed_type: seed_type,

    equipments: {
      # 刃ブ、スピ
      atk: 26 + 1,
      # 鱗鎧、鉄盾、貝帽
      def: 15 + 13 + 8,
      # # 鱗鎧、鉄盾、鉄兜
      # def: 15 + 13 + 16,
      agi: 0,
      eva: 0,
    },
    seeds: { mhp: 2, mmp: 0, atk: 6, def: 2, agi: 0, },
    inventory: { Herb: 7, Leaf: 1 },
  )
end

def mari_GaboStone2(seed_type: :rand, mari_lv11: false)
  Game_Actor.new(
    name: "マ",
    status: Actor_Status[mari_lv11 ? :Mari_lv11 : :Mari_lv10],
    seed_type: seed_type,

    equipments: {
      # 毒刀
      atk: 23,
      # 身服、シト、兎耳
      def: 28 + 15 + 15,
      agi: 0,
      # 身服のみかわし率
      eva: 1r/6,
    },
    seeds: { mhp: 1, mmp: 1, atk: 0, def: 2, agi: 0, },
    inventory: { Herb: 7, Leaf: 0 },
  )
end

def gabo_GaboStone2(seed_type: :rand)
  Game_Actor.new(
    name: "ガ",
    status: Actor_Status[:Gabo_lv4],
    seed_type: seed_type,

    equipments: {
      atk: 21, # 鉄爪
      # atk: 26, # 刃ブ
      # atk: 15, # ブメ
      # 派服、キ盾、尖帽、祈輪
      def: 28 + 9 + 5 + 5,
      # # 派服、キ盾、貝帽、祈輪
      # def: 28 + 9 + 8 + 5,
      agi: 0,
      eva: 0,
    },
    seeds: { mhp: 1, mmp: 2, atk: 0, def: 1, agi: 4, },
    inventory: { Herb: 1.0/0, Leaf: 1 },
  )
end

Party_GaboStone2 = ->seed_type: :rand, mari_lv11: false{
  hero = hero_GaboStone2(seed_type: seed_type)
  mari = mari_GaboStone2(seed_type: seed_type, mari_lv11: mari_lv11)
  gabo = gabo_GaboStone2(seed_type: seed_type)

  Game_Party_Pingval.new(mari, hero, gabo, npc_Kasim)
}

Party_GaboStone2_GA = ->seed_type: :rand, mari_lv11: false{
  hero = hero_GaboStone2(seed_type: seed_type)
  mari = mari_GaboStone2(seed_type: seed_type, mari_lv11: mari_lv11)
  gabo = gabo_GaboStone2(seed_type: seed_type)

  Game_Party_Pingval_GaboAttack.new(mari, hero, gabo, npc_Kasim)
}
