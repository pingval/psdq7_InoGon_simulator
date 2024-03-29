<!-- TOC depthFrom:1 depthTo:3 insertAnchor:false orderedList:false -->

- [PS版DQ7 イノゴン戦シミュレータ](#ps版dq7-イノゴン戦シミュレータ)
  - [使い方](#使い方)
  - [出力の例](#出力の例)
    - [マリベル石#1・マリベルLv11・100万回試行](#マリベル石1・マリベルlv11・100万回試行)
    - [ガボ石#1(ガボ殴らない)・1ターンごとにログ出力](#ガボ石1ガボ殴らない・1ターンごとにログ出力)
    - [けった氏12:49:48戦力(ガボ殴り)・種の上昇値平均・最も細かくログ出力](#けった氏124948戦力ガボ殴り・種の上昇値平均・最も細かくログ出力)
  - [ToDo](#todo)

<!-- /TOC -->

# PS版DQ7 イノゴン戦シミュレータ

PS版DQ7RTAにおいて最も勝率が低いとされている戦闘であるイノゴン戦の勝率を楽して見極めるために**今更**作ったやつ。[RGPツクールVX Ace](https://store.steampowered.com/app/220700/RPG_Maker_VX_Ace/)のスクリプトRGSS3を元にしています。

現在対応しているのは、
- 戦術
  - [腹黒パンダ氏の戦術](./lib/Party_Panda.rb)
  - [自分の戦術](./lib/Party_Pingval.rb)
  - [自分の石役ガボ殴り戦術](./lib/Party_Pingval_GaboAttack.rb)
- 戦力
  - 通常RTA
    - [マリベル石#1](./lib/Party_MariStone1.rb)
    - [マリベル石#2](./lib/Party_MariStone2.rb)
    - [ガボ石#1](./lib/Party_GaboStone1.rb)
    - [ガボ石#2](./lib/Party_GaboStone2.rb)
    - [ガボ石#3](./lib/Party_GaboStone3.rb)
    - [ガボ石#4](./lib/Party_GaboStone4.rb)
    - [けった氏の12:49:48](./lib/Party_Ketta1249.rb)
    - [奴隷先輩氏の12:50:02](./lib/Party_Drisnpi1250.rb)
    - [steel氏のカシムゥ！](./lib/Party_SteelKasimuu.rb)
    - [みるきぃ氏の12:38:48](./lib/Party_Milky1238.rb)
  - 神様＆四精霊撃破RTA
    - [ping値の16:14:03](./lib/Party_FourSpiritsPingval1614.rb)
    - [Rou氏の16:09:13](./lib/Party_FourSpiritsRou1609.rb)
    - [マリベル石#1](./lib/Party_FourSpiritsMariStone1.rb)
    - [マリベル石#2](./lib/Party_FourSpiritsMariStone2.rb)
    - [ガボ石#1](./lib/Party_FourSpiritsGaboStone1.rb)
    - [ガボ石#2](./lib/Party_FourSpiritsGaboStone2.rb)

## 使い方

```
>ruby psdq7_InoGon_simulator.rb
Usage: psdq7_InoGon_simulator options
    -n, --number NUMBER              試行回数
    -l, --log_timing TIMING          none                ログを出力しない(デフォルト)
                                     battle              戦闘ごとに出力
                                     turn                1ターンごとに出力(1回試行)
                                     action              行動ごとに出力(1回試行)
                                     result              行動の結果ごとに出力(1回試行)
    -p, --party PARTY                MariStone1          マリベル石#1(デフォルト)
                                     MariStone2          マリベル石#2
                                     GaboStone1          ガボ石#1・ガボ殴らない
                                     GaboStone1_GA       ガボ石#1・ガボ殴る
                                     GaboStone2          ガボ石#2・ガボ殴らない
                                     GaboStone2_GA       ガボ石#2・ガボ殴る
                                     GaboStone3          ガボ石#3・ガボ殴らない
                                     GaboStone3_GA       ガボ石#3・ガボ殴る
                                     GaboStone4          ガボ石#4・ガボ殴らない
                                     GaboStone4_GA       ガボ石#4・ガボ殴る
                                     Ketta1249           けった氏12:49:48・ガボ殴らない
                                     Ketta1249_GA        けった氏12:49:48・ガボ殴る
                                     Drisnpi1250         奴隷先輩氏12:50:02・ガボ殴らない
                                     Drisnpi1250_GA      奴隷先輩氏12:50:02・ガボ殴る
                                     SteelKasimuu        steel氏カシムゥ！・ガボ殴らない
                                     SteelKasimuu_GA     steel氏カシムゥ！・ガボ殴る
                                     Milky1238           みるきぃ氏12:38:48・ガボ殴らない
                                     Milky1238_GA        みるきぃ氏12:38:48・ガボ殴る
                                     FourSpiritsPingval1614四精霊ping値16:14:03
                                     FourSpiritsRou1609  四精霊Rou氏16:09:13・ガボ殴らない
                                     FourSpiritsRou1609_GA四精霊Rou氏16:09:13・ガボ殴る
                                     FourSpiritsGaboStone1四精霊ガボ石#1・ガボ殴らない
                                     FourSpiritsGaboStone1_GA四精霊ガボ石#1・ガボ殴る
                                     FourSpiritsGaboStone2四精霊ガボ石#2・ガボ殴らない
                                     FourSpiritsMariStone1四精霊マリベル#1
                                     FourSpiritsMariStone2四精霊マリベル#2
    -m, --mari_lv11                  マリベルLv11
    -s, --seed_type SEED_TYPE        rand                種の上昇値ランダム(デフォルト)
                                     min                 最小値
                                     max                 最大値
                                     ave                 平均値
e.g.
・マリベル石#1・マリベルLv11・100万回試行:
    psdq7_InoGon_simulator -pMariStone1 -m -n1000000
・ガボ石#1(ガボ殴らない)・1ターンごとにログ出力:
    psdq7_InoGon_simulator -pGaboStone1 -lturn
・けった氏12:49:48戦力(ガボ殴り)・種の上昇値平均・最も細かくログ出力:
    psdq7_InoGon_simulator -pKetta1249_GA -save -lresult

```

- [シミュレーション結果](results.md)

## 出力の例

### マリベル石#1・マリベルLv11・100万回試行

```
>psdq7_InoGon_simulator -pMariStone1 -m -n1000000
N: 1000000
Log Timing: none

Party: #<Proc:0x0000000006453a20 Party_Pingval.rb:221 (lambda)>
Maribel's Level: 11
Seed Type: rand

* Party
                                    No.1      No.2      No.3
  Status
    Max HP                            59        81        67
    Max MP                             8        29        45
    Atk                               47        64        37
    Def                               45        63        78
    Agi                               44        18        33
    Eva                            3.10%     3.10%    19.25% ; みかわし率
  Item
    Herb                               3         6  Infinity ; 薬草
    Leaf                               0         1         1 ; 世界樹の葉
  Damage Range ; 被ダメージ範囲("*"つきは最大HPでも耐えない)
    Inopp
      Attack                      31..37    27..31    23..27 ; 攻撃
      Fury                        38..46    33..38    28..33 ; 武器を振り回す
      BrutalHit                 *77..*92    67..77   57..*67 ; 痛恨の一撃
    Gonz
      Attack                      26..30    22..26    18..22
      Tail/Claw                   32..37    27..32    22..27 ; 尻尾/爪できりさく
      BrutalHit                 *65..*75    55..65    45..55

Win rate:	85.01%
* Win
  Ave. turn count: 22.28
  Party:
                                    No.1      No.2      No.3
    Ave. death count                0.82      0.41      0.13
    Death rate on battle end      14.62%     5.17%     2.92%
    Ave. HP on battle end          43.73     68.27     60.67
    Ave. Herb count                 0.16      2.23       NaN
    Ave. Leaf count                 0.00      0.58      0.55
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        0    24.87%
        1    37.20%
        2    37.94%
    Ave.       1.13
  Troop:
                                    No.1      No.2
    Death rate on battle end     100.00%   100.00%
    Ave. HP on battle end           0.00      0.00

* Lose
  Ave. turn count: 21.23
  Party:
                                    No.1      No.2      No.3
    Ave. death count                1.76      1.53      1.15
    Death rate on battle end     100.00%   100.00%   100.00%
    Ave. HP on battle end           0.00      0.00      0.00
    Ave. Herb count                 0.20      1.57       NaN
    Ave. Leaf count                 0.00      0.66      0.78
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        0     6.36%
        1    43.16%
        2    50.48%
    Ave.       1.44
  Troop:
                                    No.1      No.2
    Death rate on battle end       4.52%     6.83%
    Ave. HP on battle end         139.14    125.59

* Both
  Ave. turn count: 22.12
  Party:
                                    No.1      No.2      No.3
    Ave. death count                0.96      0.57      0.28
    Death rate on battle end      27.42%    19.39%    17.48%
    Ave. HP on battle end          37.17     58.03     51.57
    Ave. Herb count                 0.17      2.13       NaN
    Ave. Leaf count                 0.00      0.59      0.58
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        0    22.09%
        1    38.09%
        2    39.82%
    Ave.       1.18
  Troop:
                                    No.1      No.2
    Death rate on battle end      85.68%    86.03%
    Ave. HP on battle end          20.86     18.83
```

### ガボ石#1(ガボ殴らない)・1ターンごとにログ出力

```
>psdq7_InoGon_simulator -pGaboStone1 -lturn
N: 1
Log Timing: turn

Party: #<Proc:0x00000000063bc300 Party_GaboStone1.rb:66 (lambda)>
Maribel's Level: 10
Seed Type: rand

* Party
                                    No.1      No.2      No.3
  Status
    Max HP                            53        81        63
    Max MP                            38        29        10
    Atk                               36        62        41
    Def                               60        63        61
    Agi                               30        18        45
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

   1T:      イノ440/440 |      ゴン400/400 |      マ 53/ 53 |      主 81/ 81 |      ガ 63/ 63 |      カシム65000/65000
   2T:      イノ392/440 |      ゴン385/400 |      マ 53/ 53 |      主 57/ 81 |      ガ 63/ 63 |      カシム65000/65000
   3T:      イノ372/440 |      ゴン369/400 | [暗6]マ 53/ 53 |      主 81/ 81 |      ガ 63/ 63 | [暗5]カシム65000/65000
   4T:      イノ353/440 |      ゴン350/400 | [暗5]マ 53/ 53 |      主 26/ 81 |      ガ 63/ 63 | [暗4]カシム65000/65000
   5T:      イノ353/440 |      ゴン350/400 | [暗4]マ 24/ 53 |      主 66/ 81 |      ガ 63/ 63 | [暗3]カシム65000/65000
   6T:      イノ353/440 |      ゴン350/400 | [暗3]マ 38/ 53 |      主 81/ 81 |      ガ 63/ 63 | [暗2]カシム65000/65000
   7T:      イノ333/440 |      ゴン350/400 | [死 ]マ  0/ 53 |      主 81/ 81 |      ガ 63/ 63 | [暗1]カシム65000/65000
   8T:      イノ333/440 |      ゴン350/400 |      マ 53/ 53 |      主 54/ 81 |      ガ 63/ 63 |      カシム65000/65000
   9T:      イノ312/440 |      ゴン332/400 |      マ 53/ 53 |      主 56/ 81 |      ガ 63/ 63 |      カシム65000/65000
  10T:      イノ258/440 |      ゴン332/400 |      マ 53/ 53 | [暗4]主 59/ 81 | [暗4]ガ 63/ 63 | [暗6]カシム65000/65000
  11T:      イノ258/440 |      ゴン332/400 |      マ 38/ 53 | [暗3]主 81/ 81 | [暗3]ガ 63/ 63 | [暗5]カシム65000/65000
  12T:      イノ258/440 |      ゴン332/400 |      マ 38/ 53 | [暗2]主 51/ 81 | [暗2]ガ 63/ 63 | [暗4]カシム65000/65000
  13T:      イノ258/440 |      ゴン332/400 |      マ 53/ 53 | [暗1]主 61/ 81 | [暗1]ガ 63/ 63 | [暗3]カシム65000/65000
  14T:      イノ258/440 |      ゴン305/400 |      マ 39/ 53 |      主 81/ 81 |      ガ 63/ 63 | [暗2]カシム65000/65000
  15T:      イノ237/440 |      ゴン290/400 |      マ 53/ 53 |      主 48/ 81 |      ガ 63/ 63 | [暗1]カシム65000/65000
  16T:      イノ217/440 |      ゴン275/400 |      マ 21/ 53 |      主 81/ 81 |      ガ 63/ 63 |      カシム65000/65000
  17T:      イノ167/440 |      ゴン257/400 |      マ 48/ 53 |      主 81/ 81 |      ガ 63/ 63 |      カシム65000/65000
  18T:      イノ145/440 |      ゴン210/400 |      マ 53/ 53 |      主 81/ 81 |      ガ 63/ 63 |      カシム65000/65000
  19T:      イノ124/440 |      ゴン195/400 |      マ 53/ 53 |      主 81/ 81 |      ガ 63/ 63 |      カシム64977/65000
  20T:      イノ 75/440 |      ゴン180/400 |      マ 53/ 53 |      主 81/ 81 |      ガ 63/ 63 |      カシム65000/65000
  21T:      イノ 56/440 |      ゴン163/400 |      マ 53/ 53 |      主 81/ 81 |      ガ 63/ 63 | [暗5]カシム65000/65000
  22T:      イノ 35/440 |      ゴン144/400 |      マ 53/ 53 |      主 52/ 81 |      ガ 63/ 63 | [暗4]カシム65000/65000
  23T:      イノ 16/440 |      ゴン125/400 |      マ 53/ 53 |      主 53/ 81 |      ガ 32/ 63 | [暗3]カシム65000/65000
  24T:      イノ 16/440 |      ゴン125/400 |      マ 39/ 53 |      主 81/ 81 |      ガ 63/ 63 | [暗2]カシム65000/65000
  25T: [死 ]イノ  0/440 |      ゴン110/400 |      マ 38/ 53 |      主 81/ 81 |      ガ 63/ 63 | [暗1]カシム65000/65000
  26T: [死 ]イノ  0/440 |      ゴン 90/400 |      マ 53/ 53 |      主 81/ 81 |      ガ 63/ 63 |      カシム65000/65000
  27T: [死 ]イノ  0/440 |      ゴン 68/400 |      マ 53/ 53 |      主 81/ 81 |      ガ 63/ 63 |      カシム65000/65000
  28T: [死 ]イノ  0/440 |      ゴン 11/400 |      マ 53/ 53 |      主 81/ 81 |      ガ 63/ 63 |      カシム65000/65000
 Win!: [死 ]イノ  0/440 | [死 ]ゴン  0/400 |      マ 37/ 53 |      主 81/ 81 |      ガ 63/ 63 |      カシム65000/65000

                                    No.1      No.2      No.3
  Item on battle end
    Herb                         (8-0=)8   (6-3=)3  Infinity ; 薬草
    Leaf                         (0-0=)0   (1-1=)0   (1-0=)1 ; 世界樹の葉
```

### けった氏12:49:48戦力(ガボ殴り)・種の上昇値平均・最も細かくログ出力

```
>psdq7_InoGon_simulator -pKetta1249_GA -save -lresult
N: 1
Log Timing: result

Party: #<Proc:0x0000000006449200 Party_Ketta1249.rb:66 (lambda)>
Maribel's Level: 10
Seed Type: ave

* Party
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

   1T:      イノ440/440 |      ゴン400/400 |      マ 53/ 53 |      主 81/ 81 |      ガ 62/ 62 |      カシム65000/65000
    マ: 防御
    ゴン: 攻撃 to カシム
      カシム: HP-28 (64972/65000)
    イノ: 武器を振り回す to マ
      マ: HP-18 ( 35/ 53)
    カシム: 攻撃 to イノ
      イノ: HP-29 (411/440)
    ガ: ブーメラン to イノ, ゴン
      イノ: HP-14 (397/440)
      ゴン: HP-12 (388/400)
    主: ブーメラン to イノ, ゴン
      イノ: HP-22 (375/440)
      ゴン: HP-19 (369/400)
   2T:      イノ375/440 |      ゴン369/400 |      マ 35/ 53 |      主 81/ 81 |      ガ 62/ 62 |      カシム65000/65000
    マ: 防御
    イノ: 砂煙 to マ, 主, ガ, カシム
      マ: evaded
      主: +[暗5]
      ガ: +[暗6]
    ゴン: 攻撃 to カシム
      カシム: HP-29 (64971/65000)
    カシム: 様子を見る
    ガ: 奇跡の石 to マ
      マ: HP+39 ( 53/ 53)
    主: ブーメラン to イノ, ゴン
      missed to イノ
      ゴン: HP-15 (354/400)
   3T:      イノ375/440 |      ゴン354/400 |      マ 53/ 53 | [暗4]主 81/ 81 | [暗5]ガ 62/ 62 |      カシム65000/65000
    マ: 防御
    イノ: 攻撃 to カシム
      カシム: HP-34 (64966/65000)
    カシム: 斬りつける to イノ
      イノ: HP-33 (342/440)
    ゴン: 尻尾 to カシム
      カシム: HP-37 (64929/65000)
    ガ: ブーメラン to イノ, ゴン
      missed to イノ
      ゴン: HP-14 (340/400)
    主: ブーメラン to イノ, ゴン
      missed to イノ
      missed to ゴン
   4T:      イノ342/440 |      ゴン340/400 |      マ 53/ 53 | [暗3]主 81/ 81 | [暗4]ガ 62/ 62 |      カシム65000/65000
    マ: 防御
    ゴン: 攻撃 to マ
      マ: HP-12 ( 41/ 53)
    イノ: 武器を振り回す to マ
      マ: HP-17 ( 24/ 53)
    カシム: 攻撃 to イノ
      イノ: HP-29 (313/440)
    ガ: ブーメラン to イノ, ゴン
      missed to イノ
      missed to ゴン
    主: ブーメラン to イノ, ゴン
      missed to イノ
      ゴン: HP-19 (321/400)
   5T:      イノ313/440 |      ゴン321/400 |      マ 24/ 53 | [暗2]主 81/ 81 | [暗3]ガ 62/ 62 |      カシム65000/65000
    マ: 防御
    イノ: 痛恨の一撃(攻撃×2.5) to 主
      主: HP-75 (  6/ 81)
    ゴン: 攻撃 to ガ
      ガ: HP-21 ( 41/ 62)
    カシム: 斬りつける to イノ
      イノ: HP-33 (280/440)
    ガ: 奇跡の石 to マ
      マ: HP+31 ( 53/ 53)
    主: ブーメラン to イノ, ゴン
      イノ: HP-19 (261/440)
      missed to ゴン
   6T:      イノ261/440 |      ゴン321/400 |      マ 53/ 53 | [暗1]主  6/ 81 | [暗2]ガ 41/ 62 |      カシム65000/65000
    マ: 防御
    イノ: 攻撃 to カシム
      カシム: HP-33 (64967/65000)
    カシム: 様子を見る
    ゴン: 攻撃 to マ
      マ: HP-13 ( 40/ 53)
    ガ: 奇跡の石 to 主
      主: HP+37 ( 43/ 81)
    主: 薬草 to 主
      主: HP+36 ( 79/ 81)
   7T:      イノ261/440 |      ゴン321/400 |      マ 40/ 53 |      主 79/ 81 | [暗1]ガ 41/ 62 |      カシム65000/65000
    マ: 防御
    カシム: 攻撃 to ゴン
      ゴン: HP-26 (295/400)
    イノ: 砂煙 to マ, 主, ガ, カシム
      マ: +[暗5]
      カシム: +[暗5]
    ゴン: 攻撃 to カシム
      カシム: HP-31 (64969/65000)
    ガ: 奇跡の石 to ガ
      ガ: HP+38 ( 62/ 62)
    主: 薬草 to マ
      マ: HP+40 ( 53/ 53)
   8T:      イノ261/440 |      ゴン295/400 | [暗5]マ 53/ 53 |      主 79/ 81 |      ガ 62/ 62 | [暗5]カシム65000/65000
    マ: 防御
    イノ: 攻撃 to カシム
      カシム: HP-36 (64964/65000)
    ゴン: 爪できりさく to カシム
      カシム: HP-38 (64926/65000)
    カシム: 様子を見る
    ガ: ブーメラン to イノ, ゴン
      イノ: HP-14 (247/440)
      ゴン: HP-11 (284/400)
    主: ブーメラン to イノ, ゴン
      イノ: HP-23 (224/440)
      ゴン: HP-16 (268/400)
   9T:      イノ224/440 |      ゴン268/400 | [暗4]マ 53/ 53 |      主 79/ 81 |      ガ 62/ 62 | [暗4]カシム65000/65000
    マ: 防御
    イノ: 攻撃 to マ
      マ: HP-14 ( 39/ 53)
    ゴン: 尻尾 to カシム
      カシム: HP-38 (64962/65000)
    カシム: 斬りつける to イノ
      missed to イノ
    ガ: ブーメラン to イノ, ゴン
      イノ: HP-16 (208/440)
      ゴン: HP-14 (254/400)
    主: ブーメラン to イノ, ゴン
      イノ: HP-21 (187/440)
      ゴン: HP-19 (235/400)
  10T:      イノ187/440 |      ゴン235/400 | [暗3]マ 39/ 53 |      主 79/ 81 |      ガ 62/ 62 | [暗3]カシム65000/65000
    マ: 防御
    イノ: 武器を振り回す to 主
      主: HP-35 ( 44/ 81)
    ゴン: 痛恨の一撃(攻撃×2.5) to カシム
      カシム: HP-75 (64925/65000)
    カシム: 攻撃 to イノ
      missed to イノ
    ガ: 奇跡の石 to マ
      マ: HP+37 ( 53/ 53)
    主: ブーメラン to イノ, ゴン
      イノ: HP-20 (167/440)
      ゴン: HP-15 (220/400)
  11T:      イノ167/440 |      ゴン220/400 | [暗2]マ 53/ 53 |      主 44/ 81 |      ガ 62/ 62 | [暗2]カシム65000/65000
    マ: 防御
    ゴン: 爪できりさく to マ
      マ: HP-16 ( 37/ 53)
    イノ: 武器を振り回す to カシム
      カシム: HP-41 (64959/65000)
    カシム: 斬りつける to ゴン
      ゴン: HP-36 (184/400)
    ガ: 奇跡の石 to 主
      主: HP+32 ( 76/ 81)
    主: ブーメラン to イノ, ゴン
      イノ: HP-21 (146/440)
      ゴン: evaded
  12T:      イノ146/440 |      ゴン184/400 | [暗1]マ 37/ 53 |      主 76/ 81 |      ガ 62/ 62 | [暗1]カシム65000/65000
    マ: 防御
    カシム: 様子を見る
    ゴン: 痛恨の一撃(攻撃×2.5) to カシム
      カシム: evaded
    イノ: 攻撃 to マ
      マ: HP-16 ( 21/ 53)
    ガ: 奇跡の石 to マ
      マ: HP+35 ( 53/ 53)
    主: ブーメラン to イノ, ゴン
      イノ: HP-21 (125/440)
      ゴン: HP-15 (169/400)
  13T:      イノ125/440 |      ゴン169/400 |      マ 53/ 53 |      主 76/ 81 |      ガ 62/ 62 |      カシム65000/65000
    マ: 防御
    イノ: 攻撃 to 主
      主: HP-32 ( 44/ 81)
    ゴン: 攻撃 to マ
      マ: HP-12 ( 41/ 53)
    カシム: 攻撃 to ゴン
      ゴン: HP-27 (142/400)
    ガ: ブーメラン to イノ, ゴン
      イノ: HP-18 (107/440)
      ゴン: HP-13 (129/400)
    主: ブーメラン to イノ, ゴン
      イノ: HP-19 ( 88/440)
      ゴン: HP-15 (114/400)
  14T:      イノ 88/440 |      ゴン114/400 |      マ 41/ 53 |      主 44/ 81 |      ガ 62/ 62 |      カシム65000/65000
    マ: 防御
    ゴン: 爪できりさく to 主
      主: HP-31 ( 13/ 81)
    イノ: 攻撃 to マ
      マ: HP-16 ( 25/ 53)
    カシム: 様子を見る
    ガ: 奇跡の石 to マ
      マ: HP+40 ( 53/ 53)
    主: 薬草 to 主
      主: HP+37 ( 50/ 81)
  15T:      イノ 88/440 |      ゴン114/400 |      マ 53/ 53 |      主 50/ 81 |      ガ 62/ 62 |      カシム65000/65000
    マ: 防御
    イノ: 攻撃 to マ
      マ: HP-14 ( 39/ 53)
    ゴン: 攻撃 to マ
      マ: HP-13 ( 26/ 53)
    カシム: 斬りつける to イノ
      イノ: HP-35 ( 53/440)
    ガ: 奇跡の石 to 主
      主: HP+33 ( 81/ 81)
    主: ブーメラン to イノ, ゴン
      イノ: HP-21 ( 32/440)
      ゴン: HP-18 ( 96/400)
  16T:      イノ 32/440 |      ゴン 96/400 |      マ 26/ 53 |      主 81/ 81 |      ガ 62/ 62 |      カシム65000/65000
    マ: 防御
    イノ: 痛恨の一撃(攻撃×2.5) to マ
      マ: HP-37 (  0/ 53)
    ゴン: 攻撃 to ガ
      ガ: HP-25 ( 37/ 62)
    カシム: 攻撃 to ゴン
      ゴン: HP-29 ( 67/400)
    ガ: 奇跡の石 to 主
    主: ブーメラン to イノ, ゴン
      イノ: HP-23 (  9/440)
      ゴン: HP-17 ( 50/400)
  17T:      イノ  9/440 |      ゴン 50/400 | [死 ]マ  0/ 53 |      主 81/ 81 |      ガ 37/ 62 |      カシム65000/65000
    イノ: 砂煙 to 主, ガ, カシム
      ガ: +[暗7]
      カシム: +[暗6]
    カシム: 斬りつける to イノ
      missed to イノ
    ゴン: 爪できりさく to 主
      主: HP-31 ( 50/ 81)
    ガ: 奇跡の石 to 主
      主: HP+34 ( 81/ 81)
    主: 世界樹の葉 to マ
      マ: HP+53 ( 53/ 53)
  18T:      イノ  9/440 |      ゴン 50/400 |      マ 53/ 53 |      主 81/ 81 | [暗6]ガ 37/ 62 | [暗5]カシム65000/65000
    マ: 防御
    イノ: 痛恨の一撃(攻撃×2.5) to 主
      主: HP-70 ( 11/ 81)
    ゴン: 攻撃 to 主
      主: HP-26 (  0/ 81)
    カシム: 様子を見る
    ガ: 奇跡の石 to ガ
      ガ: HP+36 ( 62/ 62)
  19T:      イノ  9/440 |      ゴン 50/400 |      マ 53/ 53 | [死 ]主  0/ 81 | [暗5]ガ 62/ 62 | [暗4]カシム65000/65000
    マ: 防御
    ゴン: 痛恨の一撃(攻撃×2.5) to ガ
      ガ: HP-60 (  2/ 62)
    イノ: 攻撃 to ガ
      ガ: HP-27 (  0/ 62)
    カシム: 攻撃 to イノ
      イノ: HP-26 (  0/440)
  20T: [死 ]イノ  0/440 |      ゴン 50/400 |      マ 53/ 53 | [死 ]主  0/ 81 | [死 ]ガ  0/ 62 | [暗3]カシム65000/65000
    マ: 防御
    カシム: 様子を見る
    ゴン: 攻撃 to カシム
      カシム: HP-27 (64973/65000)
  21T: [死 ]イノ  0/440 |      ゴン 50/400 |      マ 53/ 53 | [死 ]主  0/ 81 | [死 ]ガ  0/ 62 | [暗2]カシム65000/65000
    マ: 防御
    カシム: 斬りつける to ゴン
      missed to ゴン
    ゴン: 尻尾 to マ
      マ: HP-16 ( 37/ 53)
  22T: [死 ]イノ  0/440 |      ゴン 50/400 |      マ 37/ 53 | [死 ]主  0/ 81 | [死 ]ガ  0/ 62 | [暗1]カシム65000/65000
    マ: 防御
    ゴン: 攻撃 to マ
      マ: HP-13 ( 24/ 53)
    カシム: 攻撃 to ゴン
      missed to ゴン
  23T: [死 ]イノ  0/440 |      ゴン 50/400 |      マ 24/ 53 | [死 ]主  0/ 81 | [死 ]ガ  0/ 62 |      カシム65000/65000
    マ: 防御
    カシム: 斬りつける to ゴン
      ゴン: HP-32 ( 18/400)
    ゴン: 爪できりさく to マ
      マ: HP-14 ( 10/ 53)
  24T: [死 ]イノ  0/440 |      ゴン 18/400 |      マ 10/ 53 | [死 ]主  0/ 81 | [死 ]ガ  0/ 62 |      カシム65000/65000
    ゴン: 爪できりさく to マ
      マ: HP-33 (  0/ 53)
Lose!: [死 ]イノ  0/440 |      ゴン 18/400 | [死 ]マ  0/ 53 | [死 ]主  0/ 81 | [死 ]ガ  0/ 62 |      カシム65000/65000

                                    No.1      No.2      No.3
  Item on battle end
    Herb                         (9-0=)9   (6-3=)3  Infinity ; 薬草
    Leaf                         (0-0=)0   (1-1=)0   (1-0=)1 ; 世界樹の葉
```

## ToDo
- [x] 使い方の改善(コマンドラインオプション)
- [ ] 戦術をちゃんとする
  - [x] ガボ石戦術
    - [x] ガボ殴り
  - [x] 予約葉っぱ
  - [ ] イノゴン片方が落ちた場合
  - [x] 行動のチェック
- [ ] 汚いコードをちゃんとする
- [x] けった1249
- [x] 奴隷先輩1250
- [x] steelカシムゥ！
- [ ] おかかメシさんの打打石
- [x] victoryとwinをちゃんとする
- [x] 行動順値の決定タイミングはコマンド入力前
- [x] カシムHP自動回復
- [x] ステータス出力
- [x] 戦闘終了時のアイテム出力
- [x] みるきぃ1238
