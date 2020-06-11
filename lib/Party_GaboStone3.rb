# マ:毛マ＞主:派服＞ガ:身服
def hero_GaboStone3(seed_type: :rand)
  Game_Actor.new(
    name: "主",
    status: Actor_Status[:Hero_lv10],
    seed_type: seed_type,

    equipments: {
      # 刃ブ、スピ
      atk: 26 + 1,
      # 派服、鉄盾、木帽
      def: 28 + 13 + 6,
      # # 派服、鉄盾、貝帽
      # def: 28 + 13 + 8,
      # # 派服、鉄盾、鉄兜
      # def: 28 + 13 + 16,
      agi: 0,
      eva: 0,
    },
    seeds: { mhp: 2, mmp: 0, atk: 5, def: 3, agi: 0, },
    inventory: { Herb: 7, Leaf: 1 },
  )
end

def mari_GaboStone3(seed_type: :rand, mari_lv11: false)
  Game_Actor.new(
    name: "マ",
    status: Actor_Status[mari_lv11 ? :Mari_lv11 : :Mari_lv10],
    seed_type: seed_type,

    equipments: {
      # 毒刀
      atk: 23,
      # 毛マ、シト、兎耳
      def: 18 + 15 + 15,
      agi: 0,
      # 身服のみかわし率
      eva: 0,
    },
    seeds: { mhp: 1, mmp: 1, atk: 0, def: 1, agi: 0, },
    inventory: { Herb: 7, Leaf: 0 },
  )
end

def gabo_GaboStone3(seed_type: :rand)
  Game_Actor.new(
    name: "ガ",
    status: Actor_Status[:Gabo_lv4],
    seed_type: seed_type,

    equipments: {
      # atk: 21, # 鉄爪
      # atk: 26, # 刃ブ
      atk: 15, # ブメ
      # 身服、キ盾、貝帽、祈輪
      def: 28 + 9 + 8 + 5,
      agi: 0,
      # 身服のみかわし率
      eva: 1r/6,
    },
    seeds: { mhp: 1, mmp: 2, atk: 0, def: 1, agi: 2, },
    inventory: { Herb: 1.0/0, Leaf: 1 },
  )
end

Party_GaboStone3 = ->seed_type: :rand, mari_lv11: false{
  hero = hero_GaboStone3(seed_type: seed_type)
  mari = mari_GaboStone3(seed_type: seed_type, mari_lv11: mari_lv11)
  gabo = gabo_GaboStone3(seed_type: seed_type)

  Game_Party_Pingval.new(mari, hero, gabo, npc_Kasim)
}

Party_GaboStone3_GA = ->seed_type: :rand, mari_lv11: false{
  hero = hero_GaboStone3(seed_type: seed_type)
  mari = mari_GaboStone3(seed_type: seed_type, mari_lv11: mari_lv11)
  gabo = gabo_GaboStone3(seed_type: seed_type)

  Game_Party_Pingval_GaboAttack.new(mari, hero, gabo, npc_Kasim)
}
