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
- [シミュレーション結果](#シミュレーション結果)
  - [マリベルLv10](#マリベルlv10)
  - [マリベルLv11](#マリベルlv11)
  - [主:鉄兜](#主鉄兜)
    - [マリベルLv10](#マリベルlv10-1)
    - [マリベルLv11](#マリベルlv11-1)

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
</dl>

ガボ石戦術はマリベル石戦術より力種-1としている(謎のからくり跡地カットを想定)

## マリベル石#1

[./lib/Party_MariStone1.rb](./lib/Party_MariStone1.rb)

自分が使っていた戦術。装備と種は腹黒パンダ戦術と同じ。  
マリベルLv11ならHP67(期待値)かつDef78になり、イノップの痛恨にほぼ耐える。

| 隊列 | キャラ | Lv | 武 | 鎧 | 盾 | 兜 | 飾 | 命実 | 不実 | 力種 | 守種 | 早種 | HP | MP | Atk | Def | Agi |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | ガ | 4 | 鉄爪(21) | 毛マ(18) | キ盾(9) | 尖帽(5) | - | 0 | 2 | 0 | 0 | 4 | 59 | 8 | 47 | 45 | 44 |
| 2 | 主 | 10 | 刃ブ(26) | 派服(28) | 鉄盾(13) | 貝帽(8) | スピ(Atk1) | 2 | 0 | 6 | 2 | 0 | 81 | 29 | 64 | 63 | 18 |
| 3 | マ | 10 | 毒刀(23) | 身服(28) | シト(15) | 兎耳(15) | 祈輪(5) | 2 | 1 | 0 | 3 | 0 | 57 | 39 | 36 | 77 | 30 |

```
                                    No.1      No.2      No.3
  Status
    Max HP                            59        81        57
    Max MP                             8        29        39
    Atk                               47        64        36
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
| 2 | 主 | 10 | 刃ブ(26) | 派服(28) | 鉄盾(13) | 貝帽(8) | スピ(Atk1) | 2 | 0 | 6 | 2 | 0 | 81 | 29 | 64 | 63 | 18 |
| 3 | マ | 10 | 毒刀(23) | 身服(28) | シト(15) | 兎耳(15) | 祈輪(5) | 2 | 1 | 0 | 3 | 0 | 53 | 39 | 36 | 77 | 30 |

```
                                    No.1      No.2      No.3
  Status
    Max HP                            62        81        53
    Max MP                             8        29        39
    Atk                               47        64        36
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
| 2 | 主 | 10 | 刃ブ(26) | 鉄胸(26) | 鉄盾(13) | 木帽(6) | スピ(Atk1) | 2 | 0 | 4 | 2 | 0 | 81 | 29 | 61 | 59 | 18 | 6 | 1 |
| 3 | ガ | 4 | 刃ブ(26) | 派服(28) | キ盾(9) | 貝帽(8) | 祈輪(5) | 1 | 0 | 0 | 1 | 4 | 62 | 0 | 52 | 64 | 44 | 石 | 1 |

```
                                    No.1      No.2      No.3
  Status
    Max HP                            53        81        62
    Max MP                            39        29         0
    Atk                               13        61        52
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
| 2 | 主 | 10 | 刃ブ(26) | 鉄胸(26) | 鉄盾(13) | 尖帽(5) | スピ(Atk1) | 2 | 0 | 4 | 1 | 0 | 81 | 29 | 61 | 56 | 18 | 6 | 1 |
| 3 | ガ | 4 | 刃ブ(26) | 派服(28) | - | 貝帽(8) | 祈輪(5) | 1 | 2 | 0 | 2 | 2 | 62 | 8 | 52 | 57 | 41 | 石 | 1 |

```
                                    No.1      No.2      No.3
  Status
    Max HP                            53        81        62
    Max MP                            39        29         8
    Atk                               13        61        52
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
| 2 | 主 | 10 | 刃ブ(26) | 鉄胸(26) | 鉄盾(13) | タバ(12) | スピ(Atk1) | 2 | 0 | 4 | 1 | 0 | 81 | 29 | 61 | 63 | 18 | 6 | 1 |
| 3 | ガ | 4 | ブメ(15) | 派服(28) | キ盾(9) | タバ(12) | - | 1 | 1 | 0 | 2 | 4 | 62 | 4 | 41 | 65 | 44 | 石 | 1 |

```
                                    No.1      No.2      No.3
  Status
    Max HP                            63        81        62
    Max MP                            45        29         4
    Atk                               37        61        41
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

# シミュレーション結果

***100万回試行。***

- ガボ殴り戦術はターン数は縮むが、勝率は武器がブーメランの場合2%程度下がる。刃のブーメランならコンマ数%上がる。
  - ブーメランでもガボ石#2,3では勝率がコンマ数%しか落ちていないのは、先頭のマリベルに身かわしの服を装備させており、多少回復をサボっても耐えてくれるからだろう。
- ガボ石#1\~4のうち、#2,3は#1,4より勝率が2\~3%低い。
  - #2は、主人公の鎧が派手な服(26)ではなく鱗の鎧(13)となり守備力が落ちるからだろう。
  - #3は、これもガボの鎧が派手な服(28)ではなく毛皮のマント(18)となり守備力が落ちるからだろう。
- というわけで、身かわしの服を1枚買う場合は以下のように着せるのが無難なところだろう。
  1. マorガ: 毛皮のフード
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
  - イノゴン道中で死者が出てしまった場合、2列目の葉っぱを使うのがよさそう。

## マリベルLv10

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [マリベル石#1](./lib/Party_MariStone1.rb) | 10 | 78.42% | 22.14 | 1.17 | [MariStone1_mari10_1M.txt](./log/MariStone1_mari10_1M.txt) |
| [マリベル石#2](./lib/Party_MariStone2.rb) | 10 | 78.15% | 22.00 | 1.10 | [MariStone2_mari10_1M.txt](./log/MariStone2_mari10_1M.txt) |
| [ガボ石#1・ガボ殴らない](./lib/Party_GaboStone1.rb) | 10 | 77.32% | 22.48 | 1.12 | [GaboStone1_mari10_1M.txt](./log/GaboStone1_mari10_1M.txt) |
| [ガボ石#1・ガボ殴る](./lib/Party_GaboStone1.rb) | 10 | 75.38% | 20.83 | 1.21 | [GaboStone1GA_mari10_1M.txt](./log/GaboStone1GA_mari10_1M.txt) |
| [ガボ石#2・ガボ殴らない](./lib/Party_GaboStone2.rb) | 10 | 74.73% | 22.51 | 1.04 | [GaboStone2_mari10_1M.txt](./log/GaboStone2_mari10_1M.txt) |
| [ガボ石#2・ガボ殴る](./lib/Party_GaboStone2.rb) | 10 | 74.56% | 20.62 | 1.06 | [GaboStone2GA_mari10_1M.txt](./log/GaboStone2GA_mari10_1M.txt) |
| [ガボ石#3・ガボ殴らない](./lib/Party_GaboStone3.rb) | 10 | 74.37% | 22.07 | 1.02 | [GaboStone3_mari10_1M.txt](./log/GaboStone3_mari10_1M.txt) |
| [ガボ石#3・ガボ殴る](./lib/Party_GaboStone3.rb) | 10 | 74.30% | 20.24 | 1.04 | [GaboStone3GA_mari10_1M.txt](./log/GaboStone3GA_mari10_1M.txt) |
| [ガボ石#4・ガボ殴らない](./lib/Party_GaboStone4.rb) | 10 | 78.38% | 22.50 | 1.13 | [GaboStone4_mari10_1M.txt](./log/GaboStone4_mari10_1M.txt) |
| [ガボ石#4・ガボ殴る](./lib/Party_GaboStone4.rb) | 10 | 76.15% | 20.89 | 1.23 | [GaboStone4GA_mari10_1M.txt](./log/GaboStone4GA_mari10_1M.txt) |
| [けった氏12:49:48・ガボ殴らない](./lib/Party_Ketta1249.rb) | 10 | 70.73% | 23.24 | 1.19 | [Ketta1249_mari10_1M.txt](./log/Ketta1249_mari10_1M.txt) |
| [けった氏12:49:48・ガボ殴る(**本来の戦術**)](./lib/Party_Ketta1249.rb) | 10 | 71.02% | 20.59 | 1.24 | [Ketta1249GA_mari10_1M.txt](./log/Ketta1249GA_mari10_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴らない](./lib/Party_Drisnpi1250.rb) | 10 | 62.99% | 23.09 | 1.23 | [Drisnpi1250_mari10_1M.txt](./log/Drisnpi1250_mari10_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴る(**本来の戦術**)](./lib/Party_Drisnpi1250.rb) | 10 | 63.70% | 20.47 | 1.27 | [Drisnpi1250GA_mari10_1M.txt](./log/Drisnpi1250GA_mari10_1M.txt) |
| [steel氏カシムゥ！・ガボ殴らない](./lib/Party_SteelKasimuu.rb) | 10 | 76.77% | 22.97 | 1.09 | [SteelKasimuu_mari10_1M.txt](./log/SteelKasimuu_mari10_1M.txt) |
| [steel氏カシムゥ！・ガボ殴る(**本来の戦術**)](./lib/Party_SteelKasimuu.rb) | 10 | 75.06% | 21.30 | 1.17 | [SteelKasimuuGA_mari10_1M.txt](./log/SteelKasimuuGA_mari10_1M.txt) |

## マリベルLv11

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [マリベル石#1](./lib/Party_MariStone1.rb) | 11 | 85.01% | 22.28 | 1.13 | [MariStone1_mari11_1M.txt](./log/MariStone1_mari11_1M.txt) |
| [マリベル石#2](./lib/Party_MariStone2.rb) | 11 | 85.16% | 22.16 | 1.06 | [MariStone2_mari11_1M.txt](./log/MariStone2_mari11_1M.txt) |
| [ガボ石#1・ガボ殴らない](./lib/Party_GaboStone1.rb) | 11 | 83.93% | 22.37 | 0.92 | [GaboStone1_mari11_1M.txt](./log/GaboStone1_mari11_1M.txt) |
| [ガボ石#1・ガボ殴る](./lib/Party_GaboStone1.rb) | 11 | 83.21% | 20.66 | 0.96 | [GaboStone1GA_mari11_1M.txt](./log/GaboStone1GA_mari11_1M.txt) |
| [ガボ石#2・ガボ殴らない](./lib/Party_GaboStone2.rb) | 11 | 80.37% | 22.55 | 0.93 | [GaboStone2_mari11_1M.txt](./log/GaboStone2_mari11_1M.txt) |
| [ガボ石#2・ガボ殴る](./lib/Party_GaboStone2.rb) | 11 | 81.08% | 20.60 | 0.91 | [GaboStone2GA_mari11_1M.txt](./log/GaboStone2GA_mari11_1M.txt) |
| [ガボ石#3・ガボ殴らない](./lib/Party_GaboStone3.rb) | 11 | 79.78% | 22.00 | 0.91 | [GaboStone3_mari11_1M.txt](./log/GaboStone3_mari11_1M.txt) |
| [ガボ石#3・ガボ殴る](./lib/Party_GaboStone3.rb) | 11 | 80.48% | 20.16 | 0.89 | [GaboStone3GA_mari11_1M.txt](./log/GaboStone3GA_mari11_1M.txt) |
| [ガボ石#4・ガボ殴らない](./lib/Party_GaboStone4.rb) | 11 | 84.52% | 22.37 | 0.93 | [GaboStone4_mari11_1M.txt](./log/GaboStone4_mari11_1M.txt) |
| [ガボ石#4・ガボ殴る](./lib/Party_GaboStone4.rb) | 11 | 83.68% | 20.71 | 0.98 | [GaboStone4GA_mari11_1M.txt](./log/GaboStone4GA_mari11_1M.txt) |
| [けった氏12:49:48・ガボ殴らない](./lib/Party_Ketta1249.rb) | 11 | 78.54% | 23.15 | 1.01 | [Ketta1249_mari11_1M.txt](./log/Ketta1249_mari11_1M.txt) |
| [けった氏12:49:48・ガボ殴る(**本来の戦術**)](./lib/Party_Ketta1249.rb) | 11 | 79.49% | 20.46 | 1.01 | [Ketta1249GA_mari11_1M.txt](./log/Ketta1249GA_mari11_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴らない](./lib/Party_Drisnpi1250.rb) | 11 | 71.78% | 23.05 | 1.06 | [Drisnpi1250_mari11_1M.txt](./log/Drisnpi1250_mari11_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴る(**本来の戦術**)](./lib/Party_Drisnpi1250.rb) | 11 | 73.27% | 20.40 | 1.05 | [Drisnpi1250GA_mari11_1M.txt](./log/Drisnpi1250GA_mari11_1M.txt) |
| [steel氏カシムゥ！・ガボ殴らない](./lib/Party_SteelKasimuu.rb) | 11 | 83.84% | 22.86 | 0.89 | [SteelKasimuu_mari11_1M.txt](./log/SteelKasimuu_mari11_1M.txt) |
| [steel氏カシムゥ！・ガボ殴る(**本来の戦術**)](./lib/Party_SteelKasimuu.rb) | 11 | 83.54% | 21.12 | 0.91 | [SteelKasimuuGA_mari11_1M.txt](./log/SteelKasimuuGA_mari11_1M.txt) |

## 主:鉄兜

### マリベルLv10

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [マリベル石#1](./lib/Party_MariStone1.rb) | 10 | 83.50% | 21.80 | 1.06 | [MariStone1_IronHelm_mari10_1M.txt](./log/MariStone1_IronHelm_mari10_1M.txt) |
| [マリベル石#2](./lib/Party_MariStone2.rb) | 10 | 82.73% | 21.70 | 1.01 | [MariStone2_IronHelm_mari10_1M.txt](./log/MariStone2_IronHelm_mari10_1M.txt) |
| [ガボ石#1・ガボ殴らない](./lib/Party_GaboStone1.rb) | 10 | 82.58% | 22.28 | 1.05 | [GaboStone1_IronHelm_mari10_1M.txt](./log/GaboStone1_IronHelm_mari10_1M.txt) |
| [ガボ石#1・ガボ殴る](./lib/Party_GaboStone1.rb) | 10 | 80.83% | 20.66 | 1.16 | [GaboStone1GA_IronHelm_mari10_1M.txt](./log/GaboStone1GA_IronHelm_mari10_1M.txt) |
| [ガボ石#2・ガボ殴らない](./lib/Party_GaboStone2.rb) | 10 | 81.29% | 22.33 | 0.97 | [GaboStone2_IronHelm_mari10_1M.txt](./log/GaboStone2_IronHelm_mari10_1M.txt) |
| [ガボ石#2・ガボ殴る](./lib/Party_GaboStone2.rb) | 10 | 80.87% | 20.47 | 1.00 | [GaboStone2GA_IronHelm_mari10_1M.txt](./log/GaboStone2GA_IronHelm_mari10_1M.txt) |
| [ガボ石#3・ガボ殴らない](./lib/Party_GaboStone3.rb) | 10 | 79.07% | 21.86 | 0.95 | [GaboStone3_IronHelm_mari10_1M.txt](./log/GaboStone3_IronHelm_mari10_1M.txt) |
| [ガボ石#3・ガボ殴る](./lib/Party_GaboStone3.rb) | 10 | 78.85% | 20.07 | 0.98 | [GaboStone3GA_IronHelm_mari10_1M.txt](./log/GaboStone3GA_IronHelm_mari10_1M.txt) |
| [ガボ石#4・ガボ殴らない](./lib/Party_GaboStone4.rb) | 10 | 82.64% | 22.18 | 1.06 | [GaboStone4_IronHelm_mari10_1M.txt](./log/GaboStone4_IronHelm_mari10_1M.txt) |
| [ガボ石#4・ガボ殴る](./lib/Party_GaboStone4.rb) | 10 | 80.70% | 20.60 | 1.17 | [GaboStone4GA_IronHelm_mari10_1M.txt](./log/GaboStone4GA_IronHelm_mari10_1M.txt) |
| [けった氏12:49:48・ガボ殴らない](./lib/Party_Ketta1249.rb) | 10 | 75.47% | 23.01 | 1.14 | [Ketta1249_IronHelm_mari10_1M.txt](./log/Ketta1249_IronHelm_mari10_1M.txt) |
| [けった氏12:49:48・ガボ殴る(**本来の戦術**)](./lib/Party_Ketta1249.rb) | 10 | 75.59% | 20.39 | 1.19 | [Ketta1249GA_IronHelm_mari10_1M.txt](./log/Ketta1249GA_IronHelm_mari10_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴らない](./lib/Party_Drisnpi1250.rb) | 10 | 69.23% | 22.86 | 1.17 | [Drisnpi1250_IronHelm_mari10_1M.txt](./log/Drisnpi1250_IronHelm_mari10_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴る(**本来の戦術**)](./lib/Party_Drisnpi1250.rb) | 10 | 69.48% | 20.29 | 1.22 | [Drisnpi1250GA_IronHelm_mari10_1M.txt](./log/Drisnpi1250GA_IronHelm_mari10_1M.txt) |
| [steel氏カシムゥ！・ガボ殴らない](./lib/Party_SteelKasimuu.rb) | 10 | 78.45% | 22.87 | 1.06 | [SteelKasimuu_IronHelm_mari10_1M.txt](./log/SteelKasimuu_IronHelm_mari10_1M.txt) |
| [steel氏カシムゥ！・ガボ殴る(**本来の戦術**)](./lib/Party_SteelKasimuu.rb) | 10 | 76.87% | 21.20 | 1.14 | [SteelKasimuuGA_IronHelm_mari10_1M.txt](./log/SteelKasimuuGA_IronHelm_mari10_1M.txt) |

### マリベルLv11

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 | ログ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [マリベル石#1](./lib/Party_MariStone1.rb) | 11 | 89.35% | 21.90 | 1.01 | [MariStone1_IronHelm_mari11_1M.txt](./log/MariStone1_IronHelm_mari11_1M.txt) |
| [マリベル石#2](./lib/Party_MariStone2.rb) | 11 | 89.08% | 21.80 | 0.95 | [MariStone2_IronHelm_mari11_1M.txt](./log/MariStone2_IronHelm_mari11_1M.txt) |
| [ガボ石#1・ガボ殴らない](./lib/Party_GaboStone1.rb) | 11 | 88.22% | 22.11 | 0.83 | [GaboStone1_IronHelm_mari11_1M.txt](./log/GaboStone1_IronHelm_mari11_1M.txt) |
| [ガボ石#1・ガボ殴る](./lib/Party_GaboStone1.rb) | 11 | 87.44% | 20.42 | 0.88 | [GaboStone1GA_IronHelm_mari11_1M.txt](./log/GaboStone1GA_IronHelm_mari11_1M.txt) |
| [ガボ石#2・ガボ殴らない](./lib/Party_GaboStone2.rb) | 11 | 86.08% | 22.29 | 0.84 | [GaboStone2_IronHelm_mari11_1M.txt](./log/GaboStone2_IronHelm_mari11_1M.txt) |
| [ガボ石#2・ガボ殴る](./lib/Party_GaboStone2.rb) | 11 | 86.34% | 20.38 | 0.83 | [GaboStone2GA_IronHelm_mari11_1M.txt](./log/GaboStone2GA_IronHelm_mari11_1M.txt) |
| [ガボ石#3・ガボ殴らない](./lib/Party_GaboStone3.rb) | 11 | 83.73% | 21.77 | 0.83 | [GaboStone3_IronHelm_mari11_1M.txt](./log/GaboStone3_IronHelm_mari11_1M.txt) |
| [ガボ石#3・ガボ殴る](./lib/Party_GaboStone3.rb) | 11 | 84.42% | 19.92 | 0.81 | [GaboStone3GA_IronHelm_mari11_1M.txt](./log/GaboStone3GA_IronHelm_mari11_1M.txt) |
| [ガボ石#4・ガボ殴らない](./lib/Party_GaboStone4.rb) | 11 | 87.98% | 22.00 | 0.85 | [GaboStone4_IronHelm_mari11_1M.txt](./log/GaboStone4_IronHelm_mari11_1M.txt) |
| [ガボ石#4・ガボ殴る](./lib/Party_GaboStone4.rb) | 11 | 87.23% | 20.35 | 0.91 | [GaboStone4GA_IronHelm_mari11_1M.txt](./log/GaboStone4GA_IronHelm_mari11_1M.txt) |
| [けった氏12:49:48・ガボ殴らない](./lib/Party_Ketta1249.rb) | 11 | 82.50% | 22.87 | 0.94 | [Ketta1249_IronHelm_mari11_1M.txt](./log/Ketta1249_IronHelm_mari11_1M.txt) |
| [けった氏12:49:48・ガボ殴る(**本来の戦術**)](./lib/Party_Ketta1249.rb) | 11 | 83.14% | 20.21 | 0.95 | [Ketta1249GA_IronHelm_mari11_1M.txt](./log/Ketta1249GA_IronHelm_mari11_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴らない](./lib/Party_Drisnpi1250.rb) | 11 | 77.17% | 22.78 | 0.98 | [Drisnpi1250_IronHelm_mari11_1M.txt](./log/Drisnpi1250_IronHelm_mari11_1M.txt) |
| [奴隷先輩氏12:50:02・ガボ殴る(**本来の戦術**)](./lib/Party_Drisnpi1250.rb) | 11 | 78.29% | 20.15 | 0.98 | [Drisnpi1250GA_IronHelm_mari11_1M.txt](./log/Drisnpi1250GA_IronHelm_mari11_1M.txt) |
| [steel氏カシムゥ！・ガボ殴らない](./lib/Party_SteelKasimuu.rb) | 11 | 85.11% | 22.72 | 0.86 | [SteelKasimuu_IronHelm_mari11_1M.txt](./log/SteelKasimuu_IronHelm_mari11_1M.txt) |
| [steel氏カシムゥ！・ガボ殴る(**本来の戦術**)](./lib/Party_SteelKasimuu.rb) | 11 | 84.81% | 21.00 | 0.88 | [SteelKasimuuGA_IronHelm_mari11_1M.txt](./log/SteelKasimuuGA_IronHelm_mari11_1M.txt) |
