<!-- TOC depthFrom:1 depthTo:3 insertAnchor:false orderedList:false -->

- [ステータス(期待値)](#ステータス期待値)
  - [マリベル石#1](#マリベル石1)
  - [マリベル石#2](#マリベル石2)
  - [ガボ石#1](#ガボ石1)
  - [ガボ石#2](#ガボ石2)
  - [ガボ石#3](#ガボ石3)
  - [ガボ石#4](#ガボ石4)
  - [けった氏の12:49:48](#けった氏の124948)
  - [奴隷先輩氏の12:50:02](#奴隷先輩氏の125002)
  - [steel氏のカシムゥ！](#steel氏のカシムゥ)
  - [みるきぃ氏の12:38:48](#みるきぃ氏の123848)
- [シミュレーション結果](#シミュレーション結果)
  - [マリベルLv10](#マリベルlv10)
  - [マリベルLv11](#マリベルlv11)
  - [主:鉄兜](#主鉄兜)
    - [マリベルLv10](#マリベルlv10-1)
    - [マリベルLv11](#マリベルlv11-1)
  - [考察](#考察)
  - [力種4](#力種4)
    - [マリベルLv10](#マリベルlv10-2)
    - [マリベルLv11](#マリベルlv11-2)
    - [主:鉄兜](#主鉄兜-1)
  - [力種6](#力種6)
    - [マリベルLv10](#マリベルlv10-3)
    - [マリベルLv11](#マリベルlv11-3)
    - [主:鉄兜](#主鉄兜-2)
  - [四精霊撃破RTAの場合](#四精霊撃破rtaの場合)
    - [ガボ石](#ガボ石)
    - [マリベル石](#マリベル石)

<!-- /TOC -->

----

[古いやつ](./old_results.md)

# ステータス(期待値)

<dl>
  <dt>マリベルLV10 → Lv11</dt>
  <dd>必要となる経験値は+326exp。イノゴン戦に関係のあるステータスの変化は、HP+10、Def+1</dd>
  <dt>主:貝帽・ガ:尖帽 → 主:鉄兜・ガ:貝帽</dt>
  <dd>鉄兜(1100G)は過去グリンフレークで購入可能。主:Def+8・ガ:Def+3</dd>
  <dt>みかわしの服のみかわし率</dt>
  <dd>1/6</dd>
  <dt>主に投与する力の種は5個で統一</dt>
  <dd>けった氏・奴隷先輩氏・steel氏の投与数は本来4個だが、比較しやすくするために。</dd>
</dl>

## マリベル石#1

[./lib/Party_MariStone1.rb](./lib/Party_MariStone1.rb)

自分が使っていた戦術。装備と種は腹黒パンダ戦術と同じ。  
マリベルLv11ならHP67(期待値)かつDef78になり、イノップの痛恨にほぼ耐える。

| 隊列 | キャラ | Lv | 武 | 鎧 | 盾 | 兜 | 飾 | 命実 | 不実 | 力種 | 守種 | 早種 | HP | MP | Atk | Def | Agi |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | ガ | 4 | 鉄爪(21) | 毛マ(18) | キ盾(9) | 尖帽(5) | - | 0 | 2 | 0 | 0 | 4 | 59 | 8 | 47 | 45 | 44 |
| 2 | 主 | 10 | 刃ブ(26) | 派服(28) | 鉄盾(13) | 貝帽(8) | スピ(Atk1) | 2 | 0 | 5 | 2 | 0 | 81 | 29 | 64 | 63 | 18 |
| 3 | マ | 10 | 毒刀(23) | 身服(28) | シト(15) | 兎耳(15) | 祈輪(5) | 2 | 1 | 0 | 3 | 0 | 57 | 39 | 36 | 77 | 30 |

```
                                    No.1      No.2      No.3
  Status
    Max HP                            59        81        57
    Max MP                             8        29        39
    Atk                               47        62        36
    Def                               45        63        77
    Agi                               44        18        30
    Eva                            3.10%     3.10%    19.25% ; みかわし率
  Item
    Herb                               3         6  Infinity ; 薬草
    Leaf                               0         1         1 ; 世界樹の葉
  Damage Range ; 被ダメージ範囲("*"つきは最大HPでも耐えない)
    Inopp
      Attack                      31..37    27..31    24..28 ; 攻撃
      Fury                        38..46    33..38    30..35 ; 武器を振り回す
      BrutalHit                 *77..*92    67..77  *60..*70 ; 痛恨の一撃
    Gonz
      Attack                      26..30    22..26    18..22
      Tail/Claw                   32..37    27..32    22..27 ; 尻尾/爪できりさく
      BrutalHit                 *65..*75    55..65    45..55
```

## マリベル石#2

[./lib/Party_MariStone2.rb](./lib/Party_MariStone2.rb)

\#1から命実の配分を1個変えただけ。

| 隊列 | キャラ | Lv | 武 | 鎧 | 盾 | 兜 | 飾 | 命実 | 不実 | 力種 | 守種 | 早種 | HP | MP | Atk | Def | Agi |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | ガ | 4 | 鉄爪(21) | 毛マ(18) | キ盾(9) | 尖帽(5) | - | 0 | 2 | 0 | 0 | 4 | 62 | 8 | 47 | 45 | 44 |
| 2 | 主 | 10 | 刃ブ(26) | 派服(28) | 鉄盾(13) | 貝帽(8) | スピ(Atk1) | 2 | 0 | 5 | 2 | 0 | 81 | 29 | 64 | 63 | 18 |
| 3 | マ | 10 | 毒刀(23) | 身服(28) | シト(15) | 兎耳(15) | 祈輪(5) | 2 | 1 | 0 | 3 | 0 | 53 | 39 | 36 | 77 | 30 |

```
                                    No.1      No.2      No.3
  Status
    Max HP                            62        81        53
    Max MP                             8        29        39
    Atk                               47        62        36
    Def                               45        63        77
    Agi                               44        18        30
    Eva                            3.10%     3.10%    19.25% ; みかわし率
  Item
    Herb                               3         6  Infinity ; 薬草
    Leaf                               0         1         1 ; 世界樹の葉
  Damage Range ; 被ダメージ範囲("*"つきは最大HPでも耐えない)
    Inopp
      Attack                      31..37    27..31    24..28 ; 攻撃
      Fury                        38..46    33..38    30..35 ; 武器を振り回す
      BrutalHit                 *77..*92    67..77  *60..*70 ; 痛恨の一撃
    Gonz
      Attack                      26..30    22..26    18..22
      Tail/Claw                   32..37    27..32    22..27 ; 尻尾/爪できりさく
      BrutalHit                 *65..*75    55..65   45..*55
```

## ガボ石#1

[./lib/Party_GaboStone1.rb](./lib/Party_GaboStone1.rb)

ガボ貝帽ならDef64となりゴンズの痛恨にほぼ耐える。

| 隊列 | キャラ | Lv | 武 | 鎧 | 盾 | 兜 | 飾 | 命実 | 不実 | 力種 | 守種 | 早種 | HP | MP | Atk | Def | Agi | 薬草 | 世葉 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | マ | 10 | 毒刀(23) | 毛マ(18) | シト(15) | 兎耳(15) | - | 1 | 1 | 0 | 2 | 0 | 53 | 39 | 36 | 61 | 30 | 8 | 0 |
| 2 | 主 | 10 | 刃ブ(26) | 派服(28) | 鉄盾(13) | 貝帽(8) | スピ(Atk1) | 2 | 0 | 5 | 2 | 0 | 81 | 29 | 62 | 63 | 18 | 6 | 1 |
| 3 | ガ | 4 | ブメ(15) | 身服(28) | キ盾(9) | 尖帽(5) | 祈輪(5) | 1 | 2 | 0 | 1 | 4 | 62 | 8 | 41 | 61 | 44 | 石 | 1 |

```
                                    No.1      No.2      No.3
  Status
    Max HP                            53        81        62
    Max MP                            39        29         8
    Atk                               36        62        41
    Def                               61        63        61
    Agi                               30        18        44
    Eva                            3.10%     3.10%    19.25% ; みかわし率
  Item
    Herb                               8         6  Infinity ; 薬草
    Leaf                               0         1         1 ; 世界樹の葉
  Damage Range ; 被ダメージ範囲("*"つきは最大HPでも耐えない)
    Inopp
      Attack                      28..32    27..31    28..32 ; 攻撃
      Fury                        35..40    33..38    35..40 ; 武器を振り回す
      BrutalHit                 *70..*80    67..77  *70..*80 ; 痛恨の一撃
    Gonz
      Attack                      22..26    22..26    22..26
      Tail/Claw                   27..32    27..32    27..32 ; 尻尾/爪できりさく
      BrutalHit                 *55..*65    55..65   55..*65
```

## ガボ石#2

[./lib/Party_GaboStone2.rb](./lib/Party_GaboStone2.rb)

先頭のマリベルにみかわしの服を回しつつガボの守備力も確保しようとすると、主人公には鱗の鎧しか残らない。

| 隊列 | キャラ | Lv | 武 | 鎧 | 盾 | 兜 | 飾 | 命実 | 不実 | 力種 | 守種 | 早種 | HP | MP | Atk | Def | Agi | 薬草 | 世葉 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | マ | 10 | 毒刀(23) | 身服(28) | シト(15) | 兎耳(15) | - | 1 | 1 | 0 | 2 | 0 | 53 | 39 | 36 | 71 | 30 | 8 | 0 |
| 2 | 主 | 10 | 刃ブ(26) | 鱗鎧(15) | 鉄盾(13) | 貝帽(8) | スピ(Atk1) | 2 | 0 | 5 | 2 | 0 | 81 | 29 | 62 | 50 | 18 | 6 | 1 |
| 3 | ガ | 4 | ブメ(15) | 派服(28) | キ盾(9) | 尖帽(5) | 祈輪(5) | 1 | 2 | 0 | 1 | 4 | 62 | 8 | 41 | 61 | 44 | 石 | 1 |

```
                                    No.1      No.2      No.3
  Status
    Max HP                            53        81        62
    Max MP                            39        29         8
    Atk                               36        62        41
    Def                               71        50        61
    Agi                               30        18        44
    Eva                           19.25%     3.10%     3.10% ; みかわし率
  Item
    Herb                               8         6  Infinity ; 薬草
    Leaf                               0         1         1 ; 世界樹の葉
  Damage Range ; 被ダメージ範囲("*"つきは最大HPでも耐えない)
    Inopp
      Attack                      25..29    29..35    28..32 ; 攻撃
      Fury                        31..36    36..43    35..40 ; 武器を振り回す
      BrutalHit                 *62..*72   72..*87  *70..*80 ; 痛恨の一撃
    Gonz
      Attack                      20..24    25..29    22..26
      Tail/Claw                   25..30    31..36    27..32 ; 尻尾/爪できりさく
      BrutalHit                  50..*60    62..72   55..*65
```

## ガボ石#3

[./lib/Party_GaboStone3.rb](./lib/Party_GaboStone3.rb)

先頭のマリベルにみかわしの服を回しつつガボの守備力を犠牲にする。

| 隊列 | キャラ | Lv | 武 | 鎧 | 盾 | 兜 | 飾 | 命実 | 不実 | 力種 | 守種 | 早種 | HP | MP | Atk | Def | Agi | 薬草 | 世葉 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | マ | 10 | 毒刀(23) | 身服(28) | シト(15) | 兎耳(15) | - | 1 | 1 | 0 | 2 | 0 | 53 | 39 | 36 | 71 | 30 | 8 | 0 |
| 2 | 主 | 10 | 刃ブ(26) | 派服(28) | 鉄盾(13) | 貝帽(8) | スピ(Atk1) | 2 | 0 | 5 | 2 | 0 | 81 | 29 | 62 | 63 | 18 | 6 | 1 |
| 3 | ガ | 4 | ブメ(15) | 毛マ(18) | キ盾(9) | 尖帽(5) | 祈輪(5) | 1 | 2 | 0 | 1 | 4 | 62 | 8 | 41 | 51 | 44 | 石 | 1 |

```
                                    No.1      No.2      No.3
  Status
    Max HP                            53        81        62
    Max MP                            39        29         8
    Atk                               36        62        41
    Def                               71        63        51
    Agi                               30        18        44
    Eva                           19.25%     3.10%     3.10% ; みかわし率
  Item
    Herb                               8         6  Infinity ; 薬草
    Leaf                               0         1         1 ; 世界樹の葉
  Damage Range ; 被ダメージ範囲("*"つきは最大HPでも耐えない)
    Inopp
      Attack                      25..29    27..31    29..35 ; 攻撃
      Fury                        31..36    33..38    36..43 ; 武器を振り回す
      BrutalHit                 *62..*72    67..77  *72..*87 ; 痛恨の一撃
    Gonz
      Attack                      20..24    22..26    25..29
      Tail/Claw                   25..30    27..32    31..36 ; 尻尾/爪できりさく
      BrutalHit                  50..*60    55..65  *62..*72
```

## ガボ石#4

[./lib/Party_GaboStone4.rb](./lib/Party_GaboStone4.rb)

ガボ石#1の種と装備をちょっと変えたやつ。これを自分は採用するかも。

| 隊列 | キャラ | Lv | 武 | 鎧 | 盾 | 兜 | 飾 | 命実 | 不実 | 力種 | 守種 | 早種 | HP | MP | Atk | Def | Agi | 薬草 | 世葉 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | マ | 10 | 毒刀(23) | 毛マ(18) | シト(15) | 兎耳(15) | - | 1 | 1 | 0 | 1 | 0 | 53 | 39 | 36 | 59 | 30 | 8 | 0 |
| 2 | 主 | 10 | 刃ブ(26) | 派服(28) | 鉄盾(13) | 木帽(6) | スピ(Atk1) | 2 | 0 | 5 | 3 | 0 | 81 | 29 | 62 | 62 | 18 | 6 | 1 |
| 3 | ガ | 4 | ブメ(15) | 身服(28) | キ盾(9) | 貝帽(8) | 祈輪(5) | 1 | 2 | 0 | 1 | 2 | 62 | 8 | 41 | 64 | 41 | 石 | 1 |

```
                                    No.1      No.2      No.3
  Status
    Max HP                            53        81        62
    Max MP                            39        29         8
    Atk                               36        62        41
    Def                               59        62        64
    Agi                               30        18        41
    Eva                            3.10%     3.10%    19.25% ; みかわし率
  Item
    Herb                               8         6  Infinity ; 薬草
    Leaf                               0         1         1 ; 世界樹の葉
  Damage Range ; 被ダメージ範囲("*"つきは最大HPでも耐えない)
    Inopp
      Attack                      28..32    27..31    27..31 ; 攻撃
      Fury                        35..40    33..38    33..38 ; 武器を振り回す
      BrutalHit                 *70..*80    67..77  *67..*77 ; 痛恨の一撃
    Gonz
      Attack                      23..27    22..26    21..25
      Tail/Claw                   28..33    27..32    26..31 ; 尻尾/爪できりさく
      BrutalHit                 *57..*67    55..65   52..*62
```

## けった氏の12:49:48

[./lib/Party_Ketta1249.rb](./lib/Party_Ketta1249.rb)

| 隊列 | キャラ | Lv | 武 | 鎧 | 盾 | 兜 | 飾 | 命実 | 不実 | 力種 | 守種 | 早種 | HP | MP | Atk | Def | Agi | 薬草 | 世葉 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | マ | 10 | - | 毛マ(18) | シト(15) | 兎耳(15) | - | 1 | 1 | 0 | 1 | 0 | 53 | 39 | 13 | 59 | 30 | 9 | 0 |
| 2 | 主 | 10 | 刃ブ(26) | 鉄胸(26) | 鉄盾(13) | 木帽(6) | スピ(Atk1) | 2 | 0 | 5 | 2 | 0 | 81 | 29 | 61 | 59 | 18 | 6 | 1 |
| 3 | ガ | 4 | 刃ブ(26) | 派服(28) | キ盾(9) | 貝帽(8) | 祈輪(5) | 1 | 0 | 0 | 1 | 4 | 62 | 0 | 52 | 64 | 44 | 石 | 1 |

```
                                    No.1      No.2      No.3
  Status
    Max HP                            53        81        62
    Max MP                            39        29         0
    Atk                               13        62        52
    Def                               59        59        64
    Agi                               30        18        44
    Eva                            3.10%     3.10%     3.10% ; みかわし率
  Item
    Herb                               9         6  Infinity ; 薬草
    Leaf                               0         1         1 ; 世界樹の葉
  Damage Range ; 被ダメージ範囲("*"つきは最大HPでも耐えない)
    Inopp
      Attack                      28..32    28..32    27..31 ; 攻撃
      Fury                        35..40    35..40    33..38 ; 武器を振り回す
      BrutalHit                 *70..*80    70..80  *67..*77 ; 痛恨の一撃
    Gonz
      Attack                      23..27    23..27    21..25
      Tail/Claw                   28..33    28..33    26..31 ; 尻尾/爪できりさく
      BrutalHit                 *57..*67    57..67   52..*62
```

## 奴隷先輩氏の12:50:02

[./lib/Party_Drisnpi1250.rb](./lib/Party_Drisnpi1250.rb)

けった氏と比較すると、ガボのキトンシールドがないのが大きな違い。

| 隊列 | キャラ | Lv | 武 | 鎧 | 盾 | 兜 | 飾 | 命実 | 不実 | 力種 | 守種 | 早種 | HP | MP | Atk | Def | Agi | 薬草 | 世葉 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | マ | 10 | - | 毛マ(18) | シト(15) | 兎耳(15) | - | 1 | 1 | 0 | 2 | 0 | 53 | 39 | 13 | 61 | 30 | 9 | 0 |
| 2 | 主 | 10 | 刃ブ(26) | 鉄胸(26) | 鉄盾(13) | 尖帽(5) | スピ(Atk1) | 2 | 0 | 5 | 1 | 0 | 81 | 29 | 61 | 56 | 18 | 6 | 1 |
| 3 | ガ | 4 | 刃ブ(26) | 派服(28) | - | 貝帽(8) | 祈輪(5) | 1 | 2 | 0 | 2 | 2 | 62 | 8 | 52 | 57 | 41 | 石 | 1 |

```
                                    No.1      No.2      No.3
  Status
    Max HP                            53        81        62
    Max MP                            39        29         8
    Atk                               13        62        52
    Def                               61        56        57
    Agi                               30        18        41
    Eva                            3.10%     3.10%     3.10% ; みかわし率
  Item
    Herb                               9         6  Infinity ; 薬草
    Leaf                               0         1         1 ; 世界樹の葉
  Damage Range ; 被ダメージ範囲("*"つきは最大HPでも耐えない)
    Inopp
      Attack                      28..32    29..33    29..33 ; 攻撃
      Fury                        35..40    36..41    36..41 ; 武器を振り回す
      BrutalHit                 *70..*80   72..*82  *72..*82 ; 痛恨の一撃
    Gonz
      Attack                      22..26    23..27    23..27
      Tail/Claw                   27..32    28..33    28..33 ; 尻尾/爪できりさく
      BrutalHit                 *55..*65    57..67   57..*67
```

## steel氏のカシムゥ！

[./lib/Party_SteelKasimuu.rb](./lib/Party_SteelKasimuu.rb)

[痛恨を13回喰らいながらも勝利をもぎ取った](https://www.nicovideo.jp/watch/sm33168375)ことがごく一部で話題となった。マリベルLv11。

| 隊列 | キャラ | Lv | 武 | 鎧 | 盾 | 兜 | 飾 | 命実 | 不実 | 力種 | 守種 | 早種 | HP | MP | Atk | Def | Agi | 薬草 | 世葉 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | マ | 11 | 毒刀(23) | 毛マ(18) | シト(15) | 兎耳(15) | 祈輪(5) | 1 | 1 | 0 | 3 | 0 | 63 | 45 | 37 | 68 | 33 | 9 | 0 |
| 2 | 主 | 10 | 刃ブ(26) | 鉄胸(26) | 鉄盾(13) | タバ(12) | スピ(Atk1) | 2 | 0 | 5 | 1 | 0 | 81 | 29 | 61 | 63 | 18 | 6 | 1 |
| 3 | ガ | 4 | ブメ(15) | 派服(28) | キ盾(9) | タバ(12) | - | 1 | 1 | 0 | 2 | 4 | 62 | 4 | 41 | 65 | 44 | 石 | 1 |

```
                                    No.1      No.2      No.3
  Status
    Max HP                            63        81        62
    Max MP                            45        29         4
    Atk                               37        62        41
    Def                               68        63        65
    Agi                               33        18        44
    Eva                            3.10%     3.10%     3.10% ; みかわし率
  Item
    Herb                               9         6  Infinity ; 薬草
    Leaf                               0         1         1 ; 世界樹の葉
  Damage Range ; 被ダメージ範囲("*"つきは最大HPでも耐えない)
    Inopp
      Attack                      26..30    27..31    27..31 ; 攻撃
      Fury                        32..37    33..38    33..38 ; 武器を振り回す
      BrutalHit                 *65..*75    67..77  *67..*77 ; 痛恨の一撃
    Gonz
      Attack                      20..24    22..26    21..25
      Tail/Claw                   25..30    27..32    26..31 ; 尻尾/爪できりさく
      BrutalHit                   50..60    55..65   52..*62
```

## みるきぃ氏の12:38:48

[./lib/Party_Milky1238.rb](./lib/Party_Milky1238.rb)

刃のブーメラン2本と身かわしの服を両立し、マリベルを固める。

| 隊列 | キャラ | Lv | 武 | 鎧 | 盾 | 兜 | 飾 | 命実 | 不実 | 力種 | 守種 | 早種 | HP | MP | Atk | Def | Agi | 薬草 | 世葉 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | マ | 10 | - | 身服(28) | シト(15) | 兎耳(15) | 祈輪(5) | 2 | 1 | 0 | 3 | 0 | 57 | 39 | 13 | 77 | 30 | 8 | 0 |
| 2 | 主 | 10 | 刃ブ(26) | 派服(28) | 鉄盾(13) | 貝帽(8) | - | 2 | 0 | 5 | 2 | 0 | 81 | 29 | 61 | 63 | 18 | 7 | 1 |
| 3 | ガ | 4 | 刃ブ(26) | 毛マ(18) | - | 尖帽(5) | - | 0 | 0 | 0 | 0 | 4 | 59 | 0 | 52 | 36 | 44 | 石 | 1 |

```
                                    No.1      No.2      No.3
  Status
    Max HP                            57        81        59
    Max MP                            39        29         0
    Atk                               13        61        52
    Def                               77        63        36
    Agi                               30        18        44
    Eva                           19.25%     3.10%     3.10% ; みかわし率
  Item
    Herb                               8         7  Infinity ; 薬草
    Leaf                               0         1         1 ; 世界樹の葉
  Damage Range ; 被ダメージ範囲("*"つきは最大HPでも耐えない)
    Inopp
      Attack                      24..28    27..31    33..39 ; 攻撃
      Fury                        30..35    33..38    41..48 ; 武器を振り回す
      BrutalHit                 *60..*70    67..77  *82..*97 ; 痛恨の一撃
    Gonz
      Attack                      18..22    22..26    28..32
      Tail/Claw                   22..27    27..32    35..40 ; 尻尾/爪できりさく
      BrutalHit                   45..55    55..65  *70..*80
```

# シミュレーション結果

***100万回試行。***

## マリベルLv10

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [マリベル石#1](./lib/Party_MariStone1.rb) | 10 | 77.68% | 22.58 | 1.18 | [MariStone1_mari10_1M.txt](./log/MariStone1_mari10_1M.txt) |
| [マリベル石#2](./lib/Party_MariStone2.rb) | 10 | 77.48% | 22.45 | 1.12 | [MariStone2_mari10_1M.txt](./log/MariStone2_mari10_1M.txt) |
| [ガボ石#1・ガボ殴らない](./lib/Party_GaboStone1.rb) | 10 | 77.32% | 22.48 | 1.12 | [GaboStone1_mari10_1M.txt](./log/GaboStone1_mari10_1M.txt) |
| [ガボ石#1・ガボ殴る](./lib/Party_GaboStone1.rb) | 10 | 75.38% | 20.83 | 1.21 | [GaboStone1GA_mari10_1M.txt](./log/GaboStone1GA_mari10_1M.txt) |
| [ガボ石#2・ガボ殴らない](./lib/Party_GaboStone2.rb) | 10 | 74.73% | 22.51 | 1.04 | [GaboStone2_mari10_1M.txt](./log/GaboStone2_mari10_1M.txt) |
| [ガボ石#2・ガボ殴る](./lib/Party_GaboStone2.rb) | 10 | 74.56% | 20.62 | 1.06 | [GaboStone2GA_mari10_1M.txt](./log/GaboStone2GA_mari10_1M.txt) |
| [ガボ石#3・ガボ殴らない](./lib/Party_GaboStone3.rb) | 10 | 74.37% | 22.07 | 1.02 | [GaboStone3_mari10_1M.txt](./log/GaboStone3_mari10_1M.txt) |
| [ガボ石#3・ガボ殴る](./lib/Party_GaboStone3.rb) | 10 | 74.30% | 20.24 | 1.04 | [GaboStone3GA_mari10_1M.txt](./log/GaboStone3GA_mari10_1M.txt) |
| [ガボ石#4・ガボ殴らない](./lib/Party_GaboStone4.rb) | 10 | 78.38% | 22.50 | 1.13 | [GaboStone4_mari10_1M.txt](./log/GaboStone4_mari10_1M.txt) |
| [ガボ石#4・ガボ殴る](./lib/Party_GaboStone4.rb) | 10 | 76.15% | 20.89 | 1.23 | [GaboStone4GA_mari10_1M.txt](./log/GaboStone4GA_mari10_1M.txt) |
| [けった氏12:49:48・ガボ殴らない](./lib/Party_Ketta1249.rb) | 10 | 71.62% | 22.78 | 1.18 | [Ketta1249_mari10_1M.txt](./log/Ketta1249_mari10_1M.txt) |
| [けった氏12:49:48・ガボ殴る(**本来の戦術**)](./lib/Party_Ketta1249.rb) | 10 | 71.74% | 20.25 | 1.23 | [Ketta1249GA_mari10_1M.txt](./log/Ketta1249GA_mari10_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴らない](./lib/Party_Drisnpi1250.rb) | 10 | 64.06% | 22.63 | 1.21 | [Drisnpi1250_mari10_1M.txt](./log/Drisnpi1250_mari10_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴る(**本来の戦術**)](./lib/Party_Drisnpi1250.rb) | 10 | 64.53% | 20.14 | 1.26 | [Drisnpi1250GA_mari10_1M.txt](./log/Drisnpi1250GA_mari10_1M.txt) |
| [steel氏カシムゥ！・ガボ殴らない](./lib/Party_SteelKasimuu.rb) | 10 | 77.49% | 22.51 | 1.07 | [SteelKasimuu_mari10_1M.txt](./log/SteelKasimuu_mari10_1M.txt) |
| [steel氏カシムゥ！・ガボ殴る(**本来の戦術**)](./lib/Party_SteelKasimuu.rb) | 10 | 75.93% | 20.93 | 1.15 | [SteelKasimuuGA_mari10_1M.txt](./log/SteelKasimuuGA_mari10_1M.txt) |
| [みるきぃ氏12:38:48・ガボ殴らない](./lib/Party_Milky1238.rb) | 10 | 72.72% | 22.30 | 0.99 | [Milky1238_mari10_1M.txt](./log/Milky1238_mari10_1M.txt) |
| [みるきぃ氏12:38:48・ガボ殴る(**本来の戦術**)](./lib/Party_Milky1238.rb) | 10 | 75.80% | 19.35 | 0.95 | [Milky1238GA_mari10_1M.txt](./log/Milky1238GA_mari10_1M.txt) |

## マリベルLv11

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [マリベル石#1](./lib/Party_MariStone1.rb) | 11 | 84.35% | 22.73 | 1.15 | [MariStone1_mari11_1M.txt](./log/MariStone1_mari11_1M.txt) |
| [マリベル石#2](./lib/Party_MariStone2.rb) | 11 | 84.68% | 22.60 | 1.07 | [MariStone2_mari11_1M.txt](./log/MariStone2_mari11_1M.txt) |
| [ガボ石#1・ガボ殴らない](./lib/Party_GaboStone1.rb) | 11 | 83.93% | 22.37 | 0.92 | [GaboStone1_mari11_1M.txt](./log/GaboStone1_mari11_1M.txt) |
| [ガボ石#1・ガボ殴る](./lib/Party_GaboStone1.rb) | 11 | 83.21% | 20.66 | 0.96 | [GaboStone1GA_mari11_1M.txt](./log/GaboStone1GA_mari11_1M.txt) |
| [ガボ石#2・ガボ殴らない](./lib/Party_GaboStone2.rb) | 11 | 80.37% | 22.55 | 0.93 | [GaboStone2_mari11_1M.txt](./log/GaboStone2_mari11_1M.txt) |
| [ガボ石#2・ガボ殴る](./lib/Party_GaboStone2.rb) | 11 | 81.08% | 20.60 | 0.91 | [GaboStone2GA_mari11_1M.txt](./log/GaboStone2GA_mari11_1M.txt) |
| [ガボ石#3・ガボ殴らない](./lib/Party_GaboStone3.rb) | 11 | 79.78% | 22.00 | 0.91 | [GaboStone3_mari11_1M.txt](./log/GaboStone3_mari11_1M.txt) |
| [ガボ石#3・ガボ殴る](./lib/Party_GaboStone3.rb) | 11 | 80.48% | 20.16 | 0.89 | [GaboStone3GA_mari11_1M.txt](./log/GaboStone3GA_mari11_1M.txt) |
| [ガボ石#4・ガボ殴らない](./lib/Party_GaboStone4.rb) | 11 | 84.52% | 22.37 | 0.93 | [GaboStone4_mari11_1M.txt](./log/GaboStone4_mari11_1M.txt) |
| [ガボ石#4・ガボ殴る](./lib/Party_GaboStone4.rb) | 11 | 83.68% | 20.71 | 0.98 | [GaboStone4GA_mari11_1M.txt](./log/GaboStone4GA_mari11_1M.txt) |
| [けった氏12:49:48・ガボ殴らない](./lib/Party_Ketta1249.rb) | 11 | 79.23% | 22.67 | 0.99 | [Ketta1249_mari11_1M.txt](./log/Ketta1249_mari11_1M.txt) |
| [けった氏12:49:48・ガボ殴る(**本来の戦術**)](./lib/Party_Ketta1249.rb) | 11 | 79.97% | 20.13 | 1.00 | [Ketta1249GA_mari11_1M.txt](./log/Ketta1249GA_mari11_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴らない](./lib/Party_Drisnpi1250.rb) | 11 | 72.50% | 22.61 | 1.04 | [Drisnpi1250_mari11_1M.txt](./log/Drisnpi1250_mari11_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴る(**本来の戦術**)](./lib/Party_Drisnpi1250.rb) | 11 | 73.96% | 20.05 | 1.04 | [Drisnpi1250GA_mari11_1M.txt](./log/Drisnpi1250GA_mari11_1M.txt) |
| [steel氏カシムゥ！・ガボ殴らない](./lib/Party_SteelKasimuu.rb) | 11 | 84.32% | 22.40 | 0.87 | [SteelKasimuu_mari11_1M.txt](./log/SteelKasimuu_mari11_1M.txt) |
| [steel氏カシムゥ！・ガボ殴る(**本来の戦術**)](./lib/Party_SteelKasimuu.rb) | 11 | 83.96% | 20.75 | 0.90 | [SteelKasimuuGA_mari11_1M.txt](./log/SteelKasimuuGA_mari11_1M.txt) |
| [みるきぃ氏12:38:48・ガボ殴らない](./lib/Party_Milky1238.rb) | 11 | 76.13% | 22.30 | 0.94 | [Milky1238_mari11_1M.txt](./log/Milky1238_mari11_1M.txt) |
| [みるきぃ氏12:38:48・ガボ殴る(**本来の戦術**)](./lib/Party_Milky1238.rb) | 11 | 79.49% | 19.33 | 0.88 | [Milky1238GA_mari11_1M.txt](./log/Milky1238GA_mari11_1M.txt) |

## 主:鉄兜

### マリベルLv10

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [マリベル石#1](./lib/Party_MariStone1.rb) | 10 | 82.84% | 22.24 | 1.07 | [MariStone1_IronHelm_mari10_1M.txt](./log/MariStone1_IronHelm_mari10_1M.txt) |
| [マリベル石#2](./lib/Party_MariStone2.rb) | 10 | 82.17% | 22.12 | 1.02 | [MariStone2_IronHelm_mari10_1M.txt](./log/MariStone2_IronHelm_mari10_1M.txt) |
| [ガボ石#1・ガボ殴らない](./lib/Party_GaboStone1.rb) | 10 | 82.58% | 22.28 | 1.05 | [GaboStone1_IronHelm_mari10_1M.txt](./log/GaboStone1_IronHelm_mari10_1M.txt) |
| [ガボ石#1・ガボ殴る](./lib/Party_GaboStone1.rb) | 10 | 80.83% | 20.66 | 1.16 | [GaboStone1GA_IronHelm_mari10_1M.txt](./log/GaboStone1GA_IronHelm_mari10_1M.txt) |
| [ガボ石#2・ガボ殴らない](./lib/Party_GaboStone2.rb) | 10 | 81.29% | 22.33 | 0.97 | [GaboStone2_IronHelm_mari10_1M.txt](./log/GaboStone2_IronHelm_mari10_1M.txt) |
| [ガボ石#2・ガボ殴る](./lib/Party_GaboStone2.rb) | 10 | 80.87% | 20.47 | 1.00 | [GaboStone2GA_IronHelm_mari10_1M.txt](./log/GaboStone2GA_IronHelm_mari10_1M.txt) |
| [ガボ石#3・ガボ殴らない](./lib/Party_GaboStone3.rb) | 10 | 79.07% | 21.86 | 0.95 | [GaboStone3_IronHelm_mari10_1M.txt](./log/GaboStone3_IronHelm_mari10_1M.txt) |
| [ガボ石#3・ガボ殴る](./lib/Party_GaboStone3.rb) | 10 | 78.85% | 20.07 | 0.98 | [GaboStone3GA_IronHelm_mari10_1M.txt](./log/GaboStone3GA_IronHelm_mari10_1M.txt) |
| [ガボ石#4・ガボ殴らない](./lib/Party_GaboStone4.rb) | 10 | 82.64% | 22.18 | 1.06 | [GaboStone4_IronHelm_mari10_1M.txt](./log/GaboStone4_IronHelm_mari10_1M.txt) |
| [ガボ石#4・ガボ殴る](./lib/Party_GaboStone4.rb) | 10 | 80.70% | 20.60 | 1.17 | [GaboStone4GA_IronHelm_mari10_1M.txt](./log/GaboStone4GA_IronHelm_mari10_1M.txt) |
| [けった氏12:49:48・ガボ殴らない](./lib/Party_Ketta1249.rb) | 10 | 76.36% | 19.68 | 1.12 | [Ketta1249_IronHelm_mari10_1M.txt](./log/Ketta1249_IronHelm_mari10_1M.txt) |
| [けった氏12:49:48・ガボ殴る(**本来の戦術**)](./lib/Party_Ketta1249.rb) | 10 | 76.21% | 20.07 | 1.18 | [Ketta1249GA_IronHelm_mari10_1M.txt](./log/Ketta1249GA_IronHelm_mari10_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴らない](./lib/Party_Drisnpi1250.rb) | 10 | 70.18% | 22.42 | 1.16 | [Drisnpi1250_IronHelm_mari10_1M.txt](./log/Drisnpi1250_IronHelm_mari10_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴る(**本来の戦術**)](./lib/Party_Drisnpi1250.rb) | 10 | 70.33% | 19.95 | 1.21 | [Drisnpi1250GA_IronHelm_mari10_1M.txt](./log/Drisnpi1250GA_IronHelm_mari10_1M.txt) |
| [steel氏カシムゥ！・ガボ殴らない](./lib/Party_SteelKasimuu.rb) | 10 | 79.19% | 22.40 | 1.05 | [SteelKasimuu_IronHelm_mari10_1M.txt](./log/SteelKasimuu_IronHelm_mari10_1M.txt) |
| [steel氏カシムゥ！・ガボ殴る(**本来の戦術**)](./lib/Party_SteelKasimuu.rb) | 10 | 77.49% | 20.83 | 1.13 | [SteelKasimuuGA_IronHelm_mari10_1M.txt](./log/SteelKasimuuGA_IronHelm_mari10_1M.txt) |

### マリベルLv11

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [マリベル石#1](./lib/Party_MariStone1.rb) | 11 | 88.86% | 22.35 | 1.03 | [MariStone1_IronHelm_mari11_1M.txt](./log/MariStone1_IronHelm_mari11_1M.txt) |
| [マリベル石#2](./lib/Party_MariStone2.rb) | 11 | 88.71% | 22.24 | 0.97 | [MariStone2_IronHelm_mari11_1M.txt](./log/MariStone2_IronHelm_mari11_1M.txt) |
| [ガボ石#1・ガボ殴らない](./lib/Party_GaboStone1.rb) | 11 | 88.22% | 22.11 | 0.83 | [GaboStone1_IronHelm_mari11_1M.txt](./log/GaboStone1_IronHelm_mari11_1M.txt) |
| [ガボ石#1・ガボ殴る](./lib/Party_GaboStone1.rb) | 11 | 87.44% | 20.42 | 0.88 | [GaboStone1GA_IronHelm_mari11_1M.txt](./log/GaboStone1GA_IronHelm_mari11_1M.txt) |
| [ガボ石#2・ガボ殴らない](./lib/Party_GaboStone2.rb) | 11 | 86.08% | 22.29 | 0.84 | [GaboStone2_IronHelm_mari11_1M.txt](./log/GaboStone2_IronHelm_mari11_1M.txt) |
| [ガボ石#2・ガボ殴る](./lib/Party_GaboStone2.rb) | 11 | 86.34% | 20.38 | 0.83 | [GaboStone2GA_IronHelm_mari11_1M.txt](./log/GaboStone2GA_IronHelm_mari11_1M.txt) |
| [ガボ石#3・ガボ殴らない](./lib/Party_GaboStone3.rb) | 11 | 83.73% | 21.77 | 0.83 | [GaboStone3_IronHelm_mari11_1M.txt](./log/GaboStone3_IronHelm_mari11_1M.txt) |
| [ガボ石#3・ガボ殴る](./lib/Party_GaboStone3.rb) | 11 | 84.42% | 19.92 | 0.81 | [GaboStone3GA_IronHelm_mari11_1M.txt](./log/GaboStone3GA_IronHelm_mari11_1M.txt) |
| [ガボ石#4・ガボ殴らない](./lib/Party_GaboStone4.rb) | 11 | 87.98% | 22.00 | 0.85 | [GaboStone4_IronHelm_mari11_1M.txt](./log/GaboStone4_IronHelm_mari11_1M.txt) |
| [ガボ石#4・ガボ殴る](./lib/Party_GaboStone4.rb) | 11 | 87.23% | 20.35 | 0.91 | [GaboStone4GA_IronHelm_mari11_1M.txt](./log/GaboStone4GA_IronHelm_mari11_1M.txt) |
| [けった氏12:49:48・ガボ殴らない](./lib/Party_Ketta1249.rb) | 11 | 82.97% | 22.40 | 0.93 | [Ketta1249_IronHelm_mari11_1M.txt](./log/Ketta1249_IronHelm_mari11_1M.txt) |
| [けった氏12:49:48・ガボ殴る(**本来の戦術**)](./lib/Party_Ketta1249.rb) | 11 | 83.58% | 19.88 | 0.94 | [Ketta1249GA_IronHelm_mari11_1M.txt](./log/Ketta1249GA_IronHelm_mari11_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴らない](./lib/Party_Drisnpi1250.rb) | 11 | 77.79% | 22.32 | 0.97 | [Drisnpi1250_IronHelm_mari11_1M.txt](./log/Drisnpi1250_IronHelm_mari11_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴る(**本来の戦術**)](./lib/Party_Drisnpi1250.rb) | 11 | 78.72% | 19.81 | 0.97 | [Drisnpi1250GA_IronHelm_mari11_1M.txt](./log/Drisnpi1250GA_IronHelm_mari11_1M.txt) |
| [steel氏カシムゥ！・ガボ殴らない](./lib/Party_SteelKasimuu.rb) | 11 | 85.56% | 22.27 | 0.85 | [SteelKasimuu_IronHelm_mari11_1M.txt](./log/SteelKasimuu_IronHelm_mari11_1M.txt) |
| [steel氏カシムゥ！・ガボ殴る(**本来の戦術**)](./lib/Party_SteelKasimuu.rb) | 11 | 85.23% | 20.63 | 0.87 | [SteelKasimuuGA_IronHelm_mari11_1M.txt](./log/SteelKasimuuGA_IronHelm_mari11_1M.txt) |

## 考察

- ガボ殴り戦術はターン数は縮むが、勝率は武器がブーメランの場合2%程度下がる。刃のブーメランならコンマ数%上がる。
  - ブーメランでもガボ石#2,3では勝率がコンマ数%しか落ちていないのは、先頭のマリベルに身かわしの服を装備させており、多少回復をサボっても耐えてくれるからだろう。
- ガボ石#1\~4のうち、#2,3は#1,4より勝率が2\~3%低い。
  - #2は、主人公の鎧が派手な服(26)ではなく鱗の鎧(13)となり守備力が落ちるからだろう。
  - #3は、これもガボの鎧が派手な服(28)ではなく毛皮のマント(18)となり守備力が落ちるからだろう。
- というわけで、身かわしの服を1枚買う場合は以下のように着せるのが無難なところだろう。
  1. マorガ: 毛皮のマント
  2. 主: 派手な服
  2. ガorマ: 身かわしの服
- けった氏と奴隷先輩氏の戦力の違いで大きなものは3列目のガボのキトンシールド(9)の有無くらいだが、後者は前者より勝率が7\~8%も低い。
  - これが意味するところはゴンズ痛恨耐え調整の重要性……かもしれないが、自分の書いた戦術は最後尾が防御を選択することがない(守備力が薄い場合を考慮していない)ことの影響もありそう。
- マリベルLv10→11で勝率+6\~9%
- 主:貝帽(8)→鉄兜(16)で勝率+4~5%
  - 金策的に、けった氏と奴隷先輩氏の戦力で鉄兜購入は鉄斧ドロップでもないと不可能だけど気にしないでね。
  - ガボ石#2の場合、穴だった主人公の守備力が補強されるためか勝率+6~7%と大きめに上がる。
  - steel氏のは1~2%しか上がっていないが、これは主人公の元の頭装備がターバン(12)で恩恵が少ないせいだろう。
- [古いやつ](./old_results.md)の結果によれば、微妙なところではあるが葉っぱが1枚しかない場合、2列目より3列目に持たせたほうが僅かに勝率が高いようだ。
  - イノゴン道中で死者が出てしまった場合、2列目の葉っぱで蘇生するのがよさそう。
- キトンシールドがないとガボのゴンズ痛恨耐え調整が不可能。このとき、身かわしの服は3列目のガボに着せるより1列目のマリベルに着せて固める方が勝率が上がる(みるきぃ氏の12:38:48)。
    - 身かわしあり・キトンあり: ガボ固め78.3%、マリベル固め76.3%
    - 身かわしあり・キトンなし: ガボ固め**71.9%**、マリベル固め**75.8%**

----

## 力種4

### マリベルLv10

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [けった氏12:49:48・ガボ殴らない](./lib/Party_Ketta1249.rb) | 10 | 70.73% | 23.24 | 1.19 | [Ketta1249_str4_mari10_1M.txt](./log/Ketta1249_str4_mari10_1M.txt) |
| [けった氏12:49:48・ガボ殴る(**本来の戦術**)](./lib/Party_Ketta1249.rb) | 10 | 71.02% | 20.59 | 1.24 | [Ketta1249GA_str4_mari10_1M.txt](./log/Ketta1249GA_str4_mari10_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴らない](./lib/Party_Drisnpi1250.rb) | 10 | 62.99% | 23.09 | 1.23 | [Drisnpi1250_str4_mari10_1M.txt](./log/Drisnpi1250_str4_mari10_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴る(**本来の戦術**)](./lib/Party_Drisnpi1250.rb) | 10 | 63.70% | 20.47 | 1.27 | [Drisnpi1250GA_str4_mari10_1M.txt](./log/Drisnpi1250GA_str4_mari10_1M.txt) |
| [steel氏カシムゥ！・ガボ殴らない](./lib/Party_SteelKasimuu.rb) | 10 | 76.77% | 22.97 | 1.09 | [SteelKasimuu_str4_mari10_1M.txt](./log/SteelKasimuu_str4_mari10_1M.txt) |
| [steel氏カシムゥ！・ガボ殴る(**本来の戦術**)](./lib/Party_SteelKasimuu.rb) | 10 | 75.06% | 21.30 | 1.17 | [SteelKasimuuGA_str4_mari10_1M.txt](./log/SteelKasimuuGA_str4_mari10_1M.txt) |

### マリベルLv11

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [けった氏12:49:48・ガボ殴らない](./lib/Party_Ketta1249.rb) | 11 | 78.54% | 23.15 | 1.01 | [Ketta1249_str4_mari11_1M.txt](./log/Ketta1249_str4_mari11_1M.txt) |
| [けった氏12:49:48・ガボ殴る(**本来の戦術**)](./lib/Party_Ketta1249.rb) | 11 | 79.49% | 20.46 | 1.01 | [Ketta1249GA_str4_mari11_1M.txt](./log/Ketta1249GA_str4_mari11_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴らない](./lib/Party_Drisnpi1250.rb) | 11 | 71.78% | 23.05 | 1.06 | [Drisnpi1250_str4_mari11_1M.txt](./log/Drisnpi1250_str4_mari11_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴る(**本来の戦術**)](./lib/Party_Drisnpi1250.rb) | 11 | 73.27% | 20.40 | 1.05 | [Drisnpi1250GA_str4_mari11_1M.txt](./log/Drisnpi1250GA_str4_mari11_1M.txt) |
| [steel氏カシムゥ！・ガボ殴らない](./lib/Party_SteelKasimuu.rb) | 11 | 83.84% | 22.86 | 0.89 | [SteelKasimuu_str4_mari11_1M.txt](./log/SteelKasimuu_str4_mari11_1M.txt) |
| [steel氏カシムゥ！・ガボ殴る(**本来の戦術**)](./lib/Party_SteelKasimuu.rb) | 11 | 83.54% | 21.12 | 0.91 | [SteelKasimuuGA_str4_mari11_1M.txt](./log/SteelKasimuuGA_str4_mari11_1M.txt) |

### 主:鉄兜

#### マリベルLv10

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [けった氏12:49:48・ガボ殴らない](./lib/Party_Ketta1249.rb) | 10 | 75.47% | 23.01 | 1.14 | [Ketta1249_IronHelm_str4_mari10_1M.txt](./log/Ketta1249_IronHelm_str4_mari10_1M.txt) |
| [けった氏12:49:48・ガボ殴る(**本来の戦術**)](./lib/Party_Ketta1249.rb) | 10 | 75.59% | 20.39 | 1.19 | [Ketta1249GA_IronHelm_str4_mari10_1M.txt](./log/Ketta1249GA_IronHelm_str4_mari10_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴らない](./lib/Party_Drisnpi1250.rb) | 10 | 69.23% | 22.86 | 1.17 | [Drisnpi1250_IronHelm_str4_mari10_1M.txt](./log/Drisnpi1250_IronHelm_str4_mari10_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴る(**本来の戦術**)](./lib/Party_Drisnpi1250.rb) | 10 | 69.48% | 20.29 | 1.22 | [Drisnpi1250GA_IronHelm_str4_mari10_1M.txt](./log/Drisnpi1250GA_IronHelm_str4_mari10_1M.txt) |
| [steel氏カシムゥ！・ガボ殴らない](./lib/Party_SteelKasimuu.rb) | 10 | 78.45% | 22.87 | 1.06 | [SteelKasimuu_IronHelm_str4_mari10_1M.txt](./log/SteelKasimuu_IronHelm_str4_mari10_1M.txt) |
| [steel氏カシムゥ！・ガボ殴る(**本来の戦術**)](./lib/Party_SteelKasimuu.rb) | 10 | 76.87% | 21.20 | 1.14 | [SteelKasimuuGA_IronHelm_str4_mari10_1M.txt](./log/SteelKasimuuGA_IronHelm_str4_mari10_1M.txt) |

#### マリベルLv11

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [けった氏12:49:48・ガボ殴らない](./lib/Party_Ketta1249.rb) | 11 | 82.50% | 22.87 | 0.94 | [Ketta1249_IronHelm_str4_mari11_1M.txt](./log/Ketta1249_IronHelm_str4_mari11_1M.txt) |
| [けった氏12:49:48・ガボ殴る(**本来の戦術**)](./lib/Party_Ketta1249.rb) | 11 | 83.14% | 20.21 | 0.95 | [Ketta1249GA_IronHelm_str4_mari11_1M.txt](./log/Ketta1249GA_IronHelm_str4_mari11_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴らない](./lib/Party_Drisnpi1250.rb) | 11 | 77.17% | 22.78 | 0.98 | [Drisnpi1250_IronHelm_str4_mari11_1M.txt](./log/Drisnpi1250_IronHelm_str4_mari11_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴る(**本来の戦術**)](./lib/Party_Drisnpi1250.rb) | 11 | 78.29% | 20.15 | 0.98 | [Drisnpi1250GA_IronHelm_str4_mari11_1M.txt](./log/Drisnpi1250GA_IronHelm_str4_mari11_1M.txt) |
| [steel氏カシムゥ！・ガボ殴らない](./lib/Party_SteelKasimuu.rb) | 11 | 85.11% | 22.72 | 0.86 | [SteelKasimuu_IronHelm_str4_mari11_1M.txt](./log/SteelKasimuu_IronHelm_str4_mari11_1M.txt) |
| [steel氏カシムゥ！・ガボ殴る(**本来の戦術**)](./lib/Party_SteelKasimuu.rb) | 11 | 84.81% | 21.00 | 0.88 | [SteelKasimuuGA_IronHelm_str4_mari11_1M.txt](./log/SteelKasimuuGA_IronHelm_str4_mari11_1M.txt) |

## 力種6

### マリベルLv10

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [マリベル石#1](./lib/Party_MariStone1.rb) | 10 | 78.42% | 22.14 | 1.17 | [MariStone1_str6_mari10_1M.txt](./log/MariStone1_str6_mari10_1M.txt) |
| [マリベル石#2](./lib/Party_MariStone2.rb) | 10 | 78.15% | 22.00 | 1.10 | [MariStone2_str6_mari10_1M.txt](./log/MariStone2_str6_mari10_1M.txt) |

### マリベルLv11

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [マリベル石#1](./lib/Party_MariStone1.rb) | 11 | 85.01% | 22.28 | 1.13 | [MariStone1_str6_mari11_1M.txt](./log/MariStone1_str6_mari11_1M.txt) |
| [マリベル石#2](./lib/Party_MariStone2.rb) | 11 | 85.16% | 22.16 | 1.06 | [MariStone2_str6_mari11_1M.txt](./log/MariStone2_str6_mari11_1M.txt) |

### 主:鉄兜

#### マリベルLv10

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [マリベル石#1](./lib/Party_MariStone1.rb) | 10 | 83.50% | 21.80 | 1.06 | [MariStone1_IronHelm_str6_mari10_1M.txt](./log/MariStone1_IronHelm_str6_mari10_1M.txt) |
| [マリベル石#2](./lib/Party_MariStone2.rb) | 10 | 82.73% | 21.70 | 1.01 | [MariStone2_IronHelm_str6_mari10_1M.txt](./log/MariStone2_IronHelm_str6_mari10_1M.txt) |

#### マリベルLv11

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [マリベル石#1](./lib/Party_MariStone1.rb) | 11 | 89.35% | 21.90 | 1.01 | [MariStone1_IronHelm_str6_mari11_1M.txt](./log/MariStone1_IronHelm_str6_mari11_1M.txt) |
| [マリベル石#2](./lib/Party_MariStone2.rb) | 11 | 89.08% | 21.80 | 0.95 | [MariStone2_IronHelm_str6_mari11_1M.txt](./log/MariStone2_IronHelm_str6_mari11_1M.txt) |

## 四精霊撃破RTAの場合

### ガボ石

基本戦力(マリベルLv11・ガボ殴り)

| 隊列 | キャラ | Lv | 武 | 鎧 | 盾 | 兜 | 飾 | 力種 | 早種 | 薬草 | 世葉 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | マ | 11 | 毒刀(23) | 身服(28) | シト(15) | 兎耳(15) | - | 1 | 0 | 7 | 0 |
| 2 | 主 | 10 | 刃ブ(26) | 派服(28) | 鉄盾(13) | 貝帽(8) | スピ(Atk1) | 7 | 0 | 6 | 1 |
| 3 | ガ | 4 | 刃ブ(26) | 毛マ(18) | キ盾(9) | 毛フ(11) | - |  0 | 5 | 石 | 1 |

| 命実配分 | 守種配分 | 祈輪装備キャラ | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 主3マ1ガ1 | 主4マ2ガ0 | 主 | 85.58% | 18.46 | 0.77 | [FourSpiritsGaboStone1_mhp311_def420_HeroPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp311_def420_HeroPray_GA_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | マ | 85.23% | 18.29 | 0.78 | [FourSpiritsGaboStone1_mhp311_def420_MariPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp311_def420_MariPray_GA_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | ガ | 87.65% | 18.40 | 0.75 | [FourSpiritsGaboStone1_mhp311_def420_GaboPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp311_def420_GaboPray_GA_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | 主 | 86.40% | 18.52 | 0.77 | [FourSpiritsGaboStone1_mhp311_def222_HeroPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp311_def222_HeroPray_GA_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | マ | 86.12% | 18.38 | 0.77 | [FourSpiritsGaboStone1_mhp311_def222_MariPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp311_def222_MariPray_GA_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | ガ | 87.70% | 18.51 | 0.76 | [FourSpiritsGaboStone1_mhp311_def222_GaboPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp311_def222_GaboPray_GA_mari11_1M.txt) |
| 主2マ1ガ2 | 主4マ2ガ0 | 主 | 87.11% | 18.53 | 0.76 | [FourSpiritsGaboStone1_mhp212_def420_HeroPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp212_def420_HeroPray_GA_mari11_1M.txt) |
| 主2マ1ガ2 | 主4マ2ガ0 | マ | 86.90% | 18.37 | 0.77 | [FourSpiritsGaboStone1_mhp212_def420_MariPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp212_def420_MariPray_GA_mari11_1M.txt) |
| 主2マ1ガ2 | 主4マ2ガ0 | ガ | 89.25% | 18.51 | 0.73 | [FourSpiritsGaboStone1_mhp212_def420_GaboPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp212_def420_GaboPray_GA_mari11_1M.txt) |
| 主2マ1ガ2 | 主2マ2ガ2 | 主 | 88.12% | 18.62 | 0.75 | [FourSpiritsGaboStone1_mhp212_def222_HeroPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp212_def222_HeroPray_GA_mari11_1M.txt) |
| 主2マ1ガ2 | 主2マ2ガ2 | マ | 87.96% | 18.46 | 0.76 | [FourSpiritsGaboStone1_mhp212_def222_MariPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp212_def222_MariPray_GA_mari11_1M.txt) |
| 主2マ1ガ2 | 主2マ2ガ2 | ガ | 89.15% | 18.58 | 0.74 | [FourSpiritsGaboStone1_mhp212_def222_GaboPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp212_def222_GaboPray_GA_mari11_1M.txt) |

#### ガ:身服、マ:毛フ

| 命実配分 | 守種配分 | 祈輪装備キャラ | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 主3マ1ガ1 | 主4マ2ガ0 | 主 | 88.67% | 18.90 | 0.82 | [FourSpiritsGaboStone2_mhp311_def420_HeroPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp311_def420_HeroPray_GA_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | マ | 88.91% | 18.69 | 0.79 | [FourSpiritsGaboStone2_mhp311_def420_MariPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp311_def420_MariPray_GA_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | ガ | 89.22% | 18.88 | 0.83 | [FourSpiritsGaboStone2_mhp311_def420_GaboPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp311_def420_GaboPray_GA_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | 主 | 89.03% | 19.00 | 0.83 | [FourSpiritsGaboStone2_mhp311_def222_HeroPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp311_def222_HeroPray_GA_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | マ | 89.37% | 18.80 | 0.79 | [FourSpiritsGaboStone2_mhp311_def222_MariPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp311_def222_MariPray_GA_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | ガ | 89.07% | 18.99 | 0.84 | [FourSpiritsGaboStone2_mhp311_def222_GaboPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp311_def222_GaboPray_GA_mari11_1M.txt) |
| 主2マ1ガ2 | 主4マ2ガ0 | 主 | 89.52% | 19.00 | 0.82 | [FourSpiritsGaboStone2_mhp212_def420_HeroPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp212_def420_HeroPray_GA_mari11_1M.txt) |
| 主2マ1ガ2 | 主4マ2ガ0 | マ | 89.89% | 18.79 | 0.78 | [FourSpiritsGaboStone2_mhp212_def420_MariPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp212_def420_MariPray_GA_mari11_1M.txt) |
| 主2マ1ガ2 | 主4マ2ガ0 | ガ | 89.84% | 18.97 | 0.83 | [FourSpiritsGaboStone2_mhp212_def420_GaboPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp212_def420_GaboPray_GA_mari11_1M.txt) |
| 主2マ1ガ2 | 主2マ2ガ2 | 主 | 89.26% | 19.09 | 0.84 | [FourSpiritsGaboStone2_mhp212_def222_HeroPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp212_def222_HeroPray_GA_mari11_1M.txt) |
| 主2マ1ガ2 | 主2マ2ガ2 | マ | 89.73% | 18.88 | 0.79 | [FourSpiritsGaboStone2_mhp212_def222_MariPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp212_def222_MariPray_GA_mari11_1M.txt) |
| 主2マ1ガ2 | 主2マ2ガ2 | ガ | 89.43% | 19.07 | 0.85 | [FourSpiritsGaboStone2_mhp212_def222_GaboPray_GA_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp212_def222_GaboPray_GA_mari11_1M.txt) |

#### 主:鉄兜

| 命実配分 | 守種配分 | 祈輪装備キャラ | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 主3マ1ガ1 | 主4マ2ガ0 | 主 | 87.89% | 18.15 | 0.70 | [FourSpiritsGaboStone1_mhp311_def420_HeroPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp311_def420_HeroPray_GA_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | マ | 87.69% | 18.03 | 0.71 | [FourSpiritsGaboStone1_mhp311_def420_MariPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp311_def420_MariPray_GA_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | ガ | 89.98% | 18.13 | 0.68 | [FourSpiritsGaboStone1_mhp311_def420_GaboPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp311_def420_GaboPray_GA_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | 主 | 88.76% | 18.25 | 0.70 | [FourSpiritsGaboStone1_mhp311_def222_HeroPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp311_def222_HeroPray_GA_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | マ | 88.36% | 18.13 | 0.71 | [FourSpiritsGaboStone1_mhp311_def222_MariPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp311_def222_MariPray_GA_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | ガ | 89.94% | 18.24 | 0.69 | [FourSpiritsGaboStone1_mhp311_def222_GaboPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp311_def222_GaboPray_GA_IronHelm_mari11_1M.txt) |
| 主2マ1ガ2 | 主4マ2ガ0 | 主 | 89.54% | 18.21 | 0.68 | [FourSpiritsGaboStone1_mhp212_def420_HeroPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp212_def420_HeroPray_GA_IronHelm_mari11_1M.txt) |
| 主2マ1ガ2 | 主4マ2ガ0 | マ | 89.07% | 18.10 | 0.70 | [FourSpiritsGaboStone1_mhp212_def420_MariPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp212_def420_MariPray_GA_IronHelm_mari11_1M.txt) |
| 主2マ1ガ2 | 主4マ2ガ0 | ガ | 91.33% | 18.22 | 0.67 | [FourSpiritsGaboStone1_mhp212_def420_GaboPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp212_def420_GaboPray_GA_IronHelm_mari11_1M.txt) |
| 主2マ1ガ2 | 主2マ2ガ2 | 主 | 90.33% | 18.32 | 0.68 | [FourSpiritsGaboStone1_mhp212_def222_HeroPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp212_def222_HeroPray_GA_IronHelm_mari11_1M.txt) |
| 主2マ1ガ2 | 主2マ2ガ2 | マ | 89.91% | 18.22 | 0.70 | [FourSpiritsGaboStone1_mhp212_def222_MariPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp212_def222_MariPray_GA_IronHelm_mari11_1M.txt) |
| 主2マ1ガ2 | 主2マ2ガ2 | ガ | 91.05% | 18.33 | 0.68 | [FourSpiritsGaboStone1_mhp212_def222_GaboPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone1_mhp212_def222_GaboPray_GA_IronHelm_mari11_1M.txt) |

##### ガ:身服、マ:毛フ

| 命実配分 | 守種配分 | 祈輪装備キャラ | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 主3マ1ガ1 | 主4マ2ガ0 | 主 | 91.03% | 18.57 | 0.75 | [FourSpiritsGaboStone2_mhp311_def420_HeroPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp311_def420_HeroPray_GA_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | マ | 91.27% | 18.39 | 0.71 | [FourSpiritsGaboStone2_mhp311_def420_MariPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp311_def420_MariPray_GA_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | ガ | 91.66% | 18.57 | 0.76 | [FourSpiritsGaboStone2_mhp311_def420_GaboPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp311_def420_GaboPray_GA_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | 主 | 91.45% | 18.69 | 0.76 | [FourSpiritsGaboStone2_mhp311_def222_HeroPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp311_def222_HeroPray_GA_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | マ | 91.53% | 18.52 | 0.72 | [FourSpiritsGaboStone2_mhp311_def222_MariPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp311_def222_MariPray_GA_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | ガ | 91.49% | 18.71 | 0.77 | [FourSpiritsGaboStone2_mhp311_def222_GaboPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp311_def222_GaboPray_GA_IronHelm_mari11_1M.txt) |
| 主2マ1ガ2 | 主4マ2ガ0 | 主 | 91.93% | 18.66 | 0.75 | [FourSpiritsGaboStone2_mhp212_def420_HeroPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp212_def420_HeroPray_GA_IronHelm_mari11_1M.txt) |
| 主2マ1ガ2 | 主4マ2ガ0 | マ | 92.02% | 18.49 | 0.72 | [FourSpiritsGaboStone2_mhp212_def420_MariPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp212_def420_MariPray_GA_IronHelm_mari11_1M.txt) |
| 主2マ1ガ2 | 主4マ2ガ0 | ガ | 92.06% | 18.67 | 0.77 | [FourSpiritsGaboStone2_mhp212_def420_GaboPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp212_def420_GaboPray_GA_IronHelm_mari11_1M.txt) |
| 主2マ1ガ2 | 主2マ2ガ2 | 主 | 91.62% | 18.78 | 0.77 | [FourSpiritsGaboStone2_mhp212_def222_HeroPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp212_def222_HeroPray_GA_IronHelm_mari11_1M.txt) |
| 主2マ1ガ2 | 主2マ2ガ2 | マ | 91.67% | 18.62 | 0.73 | [FourSpiritsGaboStone2_mhp212_def222_MariPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp212_def222_MariPray_GA_IronHelm_mari11_1M.txt) |
| 主2マ1ガ2 | 主2マ2ガ2 | ガ | 91.52% | 18.80 | 0.79 | [FourSpiritsGaboStone2_mhp212_def222_GaboPray_GA_IronHelm_mari11_1M.txt](./log/FourSpiritsGaboStone2_mhp212_def222_GaboPray_GA_IronHelm_mari11_1M.txt) |

### マリベル石

基本戦力(マリベルLv11)

| 隊列 | キャラ | Lv | 武 | 鎧 | 盾 | 兜 | 飾 | 力種 | 早種 | 薬草 | 世葉 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | ガ | 4 | 刃ブ(26) | 毛マ(18) | キ盾(9) | 毛フ(11) | - |  0 | 5 | 7 | 0 |
| 2 | 主 | 10 | 刃ブ(26) | 派服(28) | 鉄盾(13) | 貝帽(8) | スピ(Atk1) | 7 | 0 | 6 | 1 |
| 3 | マ | 11 | 毒刀(23) | 身服(28) | シト(15) | 兎耳(15) | - | 1 | 0 | 石 | 1 |

| 命実配分 | 守種配分 | 祈輪装備キャラ | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 主3マ1ガ1 | 主4マ2ガ0 | 主 | 88.77% | 21.55 | 0.91 | [FourSpiritsMariStone1_mhp311_def420_HeroPray_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp311_def420_HeroPray_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | マ | 88.75% | 21.46 | 0.94 | [FourSpiritsMariStone1_mhp311_def420_MariPray_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp311_def420_MariPray_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | ガ | 88.74% | 21.37 | 0.88 | [FourSpiritsMariStone1_mhp311_def420_GaboPray_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp311_def420_GaboPray_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | 主 | 88.36% | 21.61 | 0.91 | [FourSpiritsMariStone1_mhp311_def222_HeroPray_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp311_def222_HeroPray_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | マ | 88.45% | 21.53 | 0.92 | [FourSpiritsMariStone1_mhp311_def222_MariPray_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp311_def222_MariPray_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | ガ | 88.26% | 21.45 | 0.88 | [FourSpiritsMariStone1_mhp311_def222_GaboPray_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp311_def222_GaboPray_mari11_1M.txt) |
| 主3マ2ガ0 | 主4マ2ガ0 | 主 | 89.01% | 21.64 | 0.96 | [FourSpiritsMariStone1_mhp320_def420_HeroPray_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp320_def420_HeroPray_mari11_1M.txt) |
| 主3マ2ガ0 | 主4マ2ガ0 | マ | 88.99% | 21.53 | 0.98 | [FourSpiritsMariStone1_mhp320_def420_MariPray_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp320_def420_MariPray_mari11_1M.txt) |
| 主3マ2ガ0 | 主4マ2ガ0 | ガ | 88.84% | 21.42 | 0.93 | [FourSpiritsMariStone1_mhp320_def420_GaboPray_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp320_def420_GaboPray_mari11_1M.txt) |
| 主3マ2ガ0 | 主2マ2ガ2 | 主 | 88.69% | 21.67 | 0.95 | [FourSpiritsMariStone1_mhp320_def222_HeroPray_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp320_def222_HeroPray_mari11_1M.txt) |
| 主3マ2ガ0 | 主2マ2ガ2 | マ | 88.77% | 21.59 | 0.97 | [FourSpiritsMariStone1_mhp320_def222_MariPray_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp320_def222_MariPray_mari11_1M.txt) |
| 主3マ2ガ0 | 主2マ2ガ2 | ガ | 88.38% | 21.51 | 0.94 | [FourSpiritsMariStone1_mhp320_def222_GaboPray_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp320_def222_GaboPray_mari11_1M.txt) |

#### ガ:身服、マ:毛フ

| 命実配分 | 守種配分 | 祈輪装備キャラ | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 主3マ1ガ1 | 主4マ2ガ0 | 主 | 87.55% | 21.31 | 0.80 | [FourSpiritsMariStone2_mhp311_def420_HeroPray_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp311_def420_HeroPray_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | マ | 88.12% | 21.23 | 0.81 | [FourSpiritsMariStone2_mhp311_def420_MariPray_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp311_def420_MariPray_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | ガ | 87.79% | 21.11 | 0.79 | [FourSpiritsMariStone2_mhp311_def420_GaboPray_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp311_def420_GaboPray_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | 主 | 87.57% | 21.35 | 0.80 | [FourSpiritsMariStone2_mhp311_def222_HeroPray_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp311_def222_HeroPray_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | マ | 88.05% | 21.29 | 0.81 | [FourSpiritsMariStone2_mhp311_def222_MariPray_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp311_def222_MariPray_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | ガ | 87.37% | 21.18 | 0.80 | [FourSpiritsMariStone2_mhp311_def222_GaboPray_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp311_def222_GaboPray_mari11_1M.txt) |
| 主3マ2ガ0 | 主4マ2ガ0 | 主 | 88.58% | 21.34 | 0.82 | [FourSpiritsMariStone2_mhp320_def420_HeroPray_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp320_def420_HeroPray_mari11_1M.txt) |
| 主3マ2ガ0 | 主4マ2ガ0 | マ | 88.80% | 21.27 | 0.83 | [FourSpiritsMariStone2_mhp320_def420_MariPray_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp320_def420_MariPray_mari11_1M.txt) |
| 主3マ2ガ0 | 主4マ2ガ0 | ガ | 88.51% | 21.14 | 0.81 | [FourSpiritsMariStone2_mhp320_def420_GaboPray_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp320_def420_GaboPray_mari11_1M.txt) |
| 主3マ2ガ0 | 主2マ2ガ2 | 主 | 88.36% | 21.38 | 0.81 | [FourSpiritsMariStone2_mhp320_def222_HeroPray_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp320_def222_HeroPray_mari11_1M.txt) |
| 主3マ2ガ0 | 主2マ2ガ2 | マ | 88.67% | 21.32 | 0.83 | [FourSpiritsMariStone2_mhp320_def222_MariPray_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp320_def222_MariPray_mari11_1M.txt) |
| 主3マ2ガ0 | 主2マ2ガ2 | ガ | 88.22% | 21.21 | 0.81 | [FourSpiritsMariStone2_mhp320_def222_GaboPray_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp320_def222_GaboPray_mari11_1M.txt) |

#### 主:鉄兜

| 命実配分 | 守種配分 | 祈輪装備キャラ | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 主3マ1ガ1 | 主4マ2ガ0 | 主 | 91.53% | 21.18 | 0.84 | [FourSpiritsMariStone1_mhp311_def420_HeroPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp311_def420_HeroPray_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | マ | 91.62% | 21.12 | 0.86 | [FourSpiritsMariStone1_mhp311_def420_MariPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp311_def420_MariPray_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | ガ | 91.46% | 21.04 | 0.81 | [FourSpiritsMariStone1_mhp311_def420_GaboPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp311_def420_GaboPray_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | 主 | 91.22% | 21.27 | 0.83 | [FourSpiritsMariStone1_mhp311_def222_HeroPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp311_def222_HeroPray_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | マ | 91.15% | 21.21 | 0.85 | [FourSpiritsMariStone1_mhp311_def222_MariPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp311_def222_MariPray_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | ガ | 90.86% | 21.14 | 0.81 | [FourSpiritsMariStone1_mhp311_def222_GaboPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp311_def222_GaboPray_IronHelm_mari11_1M.txt) |
| 主3マ2ガ0 | 主4マ2ガ0 | 主 | 91.96% | 21.27 | 0.89 | [FourSpiritsMariStone1_mhp320_def420_HeroPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp320_def420_HeroPray_IronHelm_mari11_1M.txt) |
| 主3マ2ガ0 | 主4マ2ガ0 | マ | 91.98% | 21.20 | 0.90 | [FourSpiritsMariStone1_mhp320_def420_MariPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp320_def420_MariPray_IronHelm_mari11_1M.txt) |
| 主3マ2ガ0 | 主4マ2ガ0 | ガ | 91.65% | 21.10 | 0.86 | [FourSpiritsMariStone1_mhp320_def420_GaboPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp320_def420_GaboPray_IronHelm_mari11_1M.txt) |
| 主3マ2ガ0 | 主2マ2ガ2 | 主 | 91.60% | 21.33 | 0.88 | [FourSpiritsMariStone1_mhp320_def222_HeroPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp320_def222_HeroPray_IronHelm_mari11_1M.txt) |
| 主3マ2ガ0 | 主2マ2ガ2 | マ | 91.49% | 21.27 | 0.90 | [FourSpiritsMariStone1_mhp320_def222_MariPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp320_def222_MariPray_IronHelm_mari11_1M.txt) |
| 主3マ2ガ0 | 主2マ2ガ2 | ガ | 91.09% | 21.20 | 0.86 | [FourSpiritsMariStone1_mhp320_def222_GaboPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone1_mhp320_def222_GaboPray_IronHelm_mari11_1M.txt) |

##### ガ:身服、マ:毛フ

守種配分 | | 命実配分 | 祈輪装備キャラ | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 主3マ1ガ1 | 主4マ2ガ0 | 主 | 90.11% | 20.95 | 0.72 | [FourSpiritsMariStone2_mhp311_def420_HeroPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp311_def420_HeroPray_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | マ | 90.62% | 20.92 | 0.74 | [FourSpiritsMariStone2_mhp311_def420_MariPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp311_def420_MariPray_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主4マ2ガ0 | ガ | 90.25% | 20.80 | 0.71 | [FourSpiritsMariStone2_mhp311_def420_GaboPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp311_def420_GaboPray_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | 主 | 90.02% | 21.03 | 0.72 | [FourSpiritsMariStone2_mhp311_def222_HeroPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp311_def222_HeroPray_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | マ | 90.44% | 20.98 | 0.73 | [FourSpiritsMariStone2_mhp311_def222_MariPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp311_def222_MariPray_IronHelm_mari11_1M.txt) |
| 主3マ1ガ1 | 主2マ2ガ2 | ガ | 89.78% | 20.88 | 0.72 | [FourSpiritsMariStone2_mhp311_def222_GaboPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp311_def222_GaboPray_IronHelm_mari11_1M.txt) |
| 主3マ2ガ0 | 主4マ2ガ0 | 主 | 91.17% | 20.98 | 0.74 | [FourSpiritsMariStone2_mhp320_def420_HeroPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp320_def420_HeroPray_IronHelm_mari11_1M.txt) |
| 主3マ2ガ0 | 主4マ2ガ0 | マ | 91.40% | 20.94 | 0.75 | [FourSpiritsMariStone2_mhp320_def420_MariPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp320_def420_MariPray_IronHelm_mari11_1M.txt) |
| 主3マ2ガ0 | 主4マ2ガ0 | ガ | 91.02% | 20.83 | 0.73 | [FourSpiritsMariStone2_mhp320_def420_GaboPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp320_def420_GaboPray_IronHelm_mari11_1M.txt) |
| 主3マ2ガ0 | 主2マ2ガ2 | 主 | 90.87% | 21.05 | 0.74 | [FourSpiritsMariStone2_mhp320_def222_HeroPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp320_def222_HeroPray_IronHelm_mari11_1M.txt) |
| 主3マ2ガ0 | 主2マ2ガ2 | マ | 91.03% | 21.01 | 0.75 | [FourSpiritsMariStone2_mhp320_def222_MariPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp320_def222_MariPray_IronHelm_mari11_1M.txt) |
| 主3マ2ガ0 | 主2マ2ガ2 | ガ | 90.63% | 20.90 | 0.74 | [FourSpiritsMariStone2_mhp320_def222_GaboPray_IronHelm_mari11_1M.txt](./log/FourSpiritsMariStone2_mhp320_def222_GaboPray_IronHelm_mari11_1M.txt) |
