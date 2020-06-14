<!-- TOC depthFrom:1 depthTo:3 insertAnchor:false orderedList:false -->

- [PS版DQ7 イノゴン戦シミュレータ](#ps版dq7-イノゴン戦シミュレータ)
  - [使い方](#使い方)
  - [出力の例](#出力の例)
    - [`$option[:N] = 100000`](#optionn--100000)
    - [`$option[:log_timing] = :turn`](#optionlog_timing--turn)
    - [`$option[:log_timing] = :result`](#optionlog_timing--result)
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
  - [マリベル石#1](./lib/Party_MariStone1.rb)
  - [マリベル石#2](./lib/Party_MariStone2.rb)
  - [ガボ石#1](./lib/Party_GaboStone1.rb)
  - [ガボ石#2](./lib/Party_GaboStone2.rb)
  - [ガボ石#3](./lib/Party_GaboStone3.rb)
  - [ガボ石#4](./lib/Party_GaboStone4.rb)
  - [けった氏の12:49:48](./lib/Party_Ketta1249.rb)
  - [奴隷先輩氏の12:50:02](./lib/Party_Drisnpi1250.rb)
  - [steel氏のカシムゥ！](./lib/Party_SteelKasimuu.rb)

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
    -m, --mari_lv11                  マリベルLv11
    -s, --seed_type SEED_TYPE        rand                種の上昇値ランダム(デフォルト)
                                     min                 最小値
                                     max                 最大値
                                     ave                 平均値
e.g.
・けった氏12:49:48戦力(ガボ殴り)・種の上昇値平均・最も細かくログ出力:
    psdq7_InoGon_simulator -pKetta1249_GA -save -lresult
・マリベル石#1・マリベルLv11・100万回試行:
    psdq7_InoGon_simulator -pMariStone1 -m -n1000000
```

- [シミュレーション結果](results.md)

## 出力の例

### `$option[:N] = 100000`
100000回試行。

```
N: 100000
Log Timing: none

Party: #<Proc:0x000000000639df68 MariStone1_psdq7_InoGon_simulator.rb:299 (lambda)>
Maribel's Level: 10
Seed Type: rand

* Party
                                    No.1      No.2      No.3
  Status
    Max HP                            59        81        57
    Max MP                             8        29        39
    Atk                               47        64        36
    Def                               45        63        77
    Agi                               44        18        30
    Eva                            3.10%     3.10%    19.25% ; みかわし率
  Item
    Herb                               3         7  Infinity ; 薬草
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

Win rate:	77.62%
* Win
  Ave. turn count: 22.30
  Party:
                                    No.1      No.2      No.3
    Ave. death count                0.79      0.39      0.24
    Death rate on battle end      15.81%     4.81%     5.87%
    Ave. HP on battle end          42.85     67.92     50.00
    Ave. Herb count                 0.17      2.13       NaN
    Ave. Leaf count                 0.00      0.61      0.55
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        0    23.48%
        1    36.90%
        2    39.62%
    Ave.       1.16
  Troop:
                                    No.1      No.2
    Death rate on battle end     100.00%   100.00%
    Ave. HP on battle end           0.00      0.00

* Lose
  Ave. turn count: 19.82
  Party:
                                    No.1      No.2      No.3
    Ave. death count                1.70      1.43      1.25
    Death rate on battle end     100.00%   100.00%   100.00%
    Ave. HP on battle end           0.00      0.00      0.00
    Ave. Herb count                 0.21      1.53       NaN
    Ave. Leaf count                 0.00      0.71      0.68
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        0     9.31%
        1    42.66%
        2    48.04%
    Ave.       1.39
  Troop:
                                    No.1      No.2
    Death rate on battle end       3.95%     5.67%
    Ave. HP on battle end         150.00    135.78

* Both
  Ave. turn count: 21.75
  Party:
                                    No.1      No.2      No.3
    Ave. death count                0.99      0.63      0.47
    Death rate on battle end      34.66%    26.12%    26.94%
    Ave. HP on battle end          33.25     52.72     38.81
    Ave. Herb count                 0.18      2.00       NaN
    Ave. Leaf count                 0.00      0.64      0.58
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        0    20.30%
        1    38.19%
        2    41.51%
    Ave.       1.21
  Troop:
                                    No.1      No.2
    Death rate on battle end      78.50%    78.88%
    Ave. HP on battle end          33.58     30.39
```
### `$option[:log_timing] = :turn`
戦闘ログを1Tごとに出力する。

```
N: 1
Log Timing: turn

Party: #<Proc:0x0000000006481768 Party_GaboStone1.rb:66 (lambda)>
Maribel's Level: 10
Seed Type: rand

* Party
                                    No.1      No.2      No.3
  Status
    Max HP                            54        80        62
    Max MP                            39        29         6
    Atk                               36        65        47
    Def                               60        64        61
    Agi                               30        18        43
    Eva                            3.10%     3.10%    19.25% ; みかわし率
  Item
    Herb                               7         7  Infinity ; 薬草
    Leaf                               0         1         1 ; 世界樹の葉
  Damage Range ; 被ダメージ範囲("*"つきは最大HPでも耐えない)
    Inopp
      Attack                      28..32    27..31    28..32 ; 攻撃
      Fury                        35..40    33..38    35..40 ; 武器を振り回す
      BrutalHit                 *70..*80    67..77  *70..*80 ; 痛恨の一撃
    Gonz
      Attack                      22..26    21..25    22..26
      Tail/Claw                   27..32    26..31    27..32 ; 尻尾/爪できりさく
      BrutalHit                 *55..*65    52..62   55..*65

   1T:      イノ440/440 |      ゴン400/400 |      マ 54/ 54 |      主 80/ 80 |      ガ 62/ 62 |      カシム65000/65000
   2T:      イノ416/440 |      ゴン352/400 |      マ 54/ 54 |      主 80/ 80 |      ガ 62/ 62 |      カシム65000/65000
   3T:      イノ391/440 |      ゴン334/400 |      マ 54/ 54 |      主 58/ 80 |      ガ 62/ 62 |      カシム65000/65000
   4T:      イノ370/440 |      ゴン282/400 |      マ 54/ 54 |      主 25/ 80 |      ガ 62/ 62 |      カシム65000/65000
   5T:      イノ370/440 |      ゴン256/400 |      マ 34/ 54 |      主 65/ 80 |      ガ 62/ 62 |      カシム65000/65000
   6T:      イノ370/440 |      ゴン256/400 | [暗5]マ 42/ 54 | [暗6]主 80/ 80 |      ガ 62/ 62 | [暗6]カシム65000/65000
   7T:      イノ348/440 |      ゴン237/400 | [暗4]マ 54/ 54 | [暗5]主 51/ 80 |      ガ 62/ 62 | [暗5]カシム65000/65000
   8T:      イノ323/440 |      ゴン237/400 | [暗3]マ 54/ 54 | [暗4]主 75/ 80 |      ガ 62/ 62 | [暗4]カシム65000/65000
   9T:      イノ323/440 |      ゴン237/400 | [暗2]マ 54/ 54 | [暗3]主 75/ 80 | [暗4]ガ 62/ 62 | [暗3]カシム65000/65000
  10T:      イノ323/440 |      ゴン237/400 | [暗1]マ 54/ 54 | [暗2]主 75/ 80 | [暗3]ガ 37/ 62 | [暗2]カシム65000/65000
  11T:      イノ295/440 |      ゴン237/400 |      マ 41/ 54 | [暗1]主 44/ 80 | [暗2]ガ 62/ 62 | [暗1]カシム65000/65000
  12T:      イノ262/440 |      ゴン237/400 |      マ 54/ 54 | [死 ]主  0/ 80 | [暗1]ガ 62/ 62 |      カシム65000/65000
  13T:      イノ262/440 |      ゴン237/400 |      マ 28/ 54 |      主 80/ 80 |      ガ 62/ 62 |      カシム65000/65000
  14T:      イノ240/440 |      ゴン190/400 |      マ 54/ 54 |      主 45/ 80 |      ガ 37/ 62 |      カシム65000/65000
  15T:      イノ240/440 |      ゴン190/400 |      マ 40/ 54 |      主 80/ 80 |      ガ 62/ 62 |      カシム65000/65000
  16T:      イノ219/440 |      ゴン190/400 |      マ 54/ 54 | [暗4]主 80/ 80 |      ガ 62/ 62 | [暗5]カシム65000/65000
  17T:      イノ196/440 |      ゴン190/400 | [暗6]マ 54/ 54 | [暗3]主 51/ 80 |      ガ 62/ 62 | [暗4]カシム65000/65000
  18T:      イノ161/440 |      ゴン190/400 | [暗5]マ 39/ 54 | [暗2]主 71/ 80 |      ガ 62/ 62 | [暗3]カシム65000/65000
  19T:      イノ140/440 |      ゴン171/400 | [暗4]マ 41/ 54 | [暗1]主 71/ 80 |      ガ 62/ 62 | [暗2]カシム65000/65000
  20T:      イノ118/440 |      ゴン152/400 | [暗3]マ 54/ 54 |      主 71/ 80 |      ガ 62/ 62 | [暗1]カシム65000/65000
  21T:      イノ118/440 |      ゴン152/400 | [暗2]マ 54/ 54 |      主 69/ 80 |      ガ 62/ 62 |      カシム65000/65000
  22T:      イノ118/440 |      ゴン117/400 | [暗1]マ  6/ 54 |      主 80/ 80 |      ガ 62/ 62 |      カシム65000/65000
  23T:      イノ118/440 |      ゴン 87/400 |      マ 54/ 54 |      主 80/ 80 |      ガ 62/ 62 |      カシム65000/65000
  24T:      イノ 61/440 |      ゴン 70/400 |      マ 54/ 54 |      主 57/ 80 |      ガ 62/ 62 |      カシム65000/65000
  25T:      イノ 61/440 |      ゴン 70/400 |      マ 54/ 54 |      主 80/ 80 |      ガ 40/ 62 |      カシム65000/65000
  26T:      イノ 61/440 |      ゴン 43/400 | [暗6]マ 39/ 54 | [暗5]主 80/ 80 |      ガ 62/ 62 | [暗6]カシム65000/65000
  27T:      イノ 38/440 |      ゴン 43/400 | [暗5]マ 54/ 54 | [暗4]主 80/ 80 |      ガ 62/ 62 | [暗5]カシム65000/65000
  28T: [死 ]イノ  0/440 |      ゴン 43/400 | [暗4]マ 54/ 54 | [暗3]主 80/ 80 |      ガ 27/ 62 | [暗4]カシム65000/65000
  29T: [死 ]イノ  0/440 |      ゴン 43/400 | [暗3]マ 39/ 54 | [暗2]主 80/ 80 |      ガ 62/ 62 | [暗3]カシム65000/65000
  30T: [死 ]イノ  0/440 |      ゴン 19/400 | [暗2]マ 54/ 54 | [暗1]主 59/ 80 |      ガ 62/ 62 | [暗2]カシム65000/65000
  31T: [死 ]イノ  0/440 |      ゴン 19/400 | [暗1]マ 54/ 54 |      主 80/ 80 |      ガ 62/ 62 | [暗1]カシム65000/65000
 Win!: [死 ]イノ  0/440 | [死 ]ゴン  0/400 |      マ 39/ 54 |      主 80/ 80 |      ガ 62/ 62 |      カシム65000/65000

                                    No.1      No.2      No.3
  Item on battle end
    Herb                         (7-1=)6   (7-2=)5  Infinity ; 薬草
    Leaf                         (0-0=)0   (1-0=)1   (1-1=)0 ; 世界樹の葉
```

### `$option[:log_timing] = :result`
戦闘ログを最も詳しく出力する。

```
N: 1
Log Timing: result

Party: #<Proc:0x00000000061b2b90 Party_GaboStone2.rb:65 (lambda)>
Maribel's Level: 10
Seed Type: rand

* Party
                                    No.1      No.2      No.3
  Status
    Max HP                            53        81        62
    Max MP                            39        29         8
    Atk                               36        64        47
    Def                               72        51        62
    Agi                               30        18        43
    Eva                           19.25%     3.10%     3.10% ; みかわし率
  Item
    Herb                               7         7  Infinity ; 薬草
    Leaf                               0         1         1 ; 世界樹の葉
  Damage Range ; 被ダメージ範囲("*"つきは最大HPでも耐えない)
    Inopp
      Attack                      25..29    29..35    27..31 ; 攻撃
      Fury                        31..36    36..43    33..38 ; 武器を振り回す
      BrutalHit                 *62..*72   72..*87  *67..*77 ; 痛恨の一撃
    Gonz
      Attack                      19..23    25..29    22..26
      Tail/Claw                   23..28    31..36    27..32 ; 尻尾/爪できりさく
      BrutalHit                  47..*57    62..72   55..*65

   1T:      イノ440/440 |      ゴン400/400 |      マ 53/ 53 |      主 81/ 81 |      ガ 62/ 62 |      カシム65000/65000
    マ: 防御
    ゴン: 痛恨の一撃(攻撃×2.5) to カシム
      カシム: HP-75 (64925/65000)
    イノ: 攻撃 to マ
      マ: HP-14 ( 39/ 53)
    ガ: 奇跡の石 to マ
      マ: HP+38 ( 53/ 53)
    カシム: 攻撃 to ゴン
      ゴン: HP-27 (373/400)
    主: ブーメラン to イノ, ゴン
      イノ: HP-22 (418/440)
      ゴン: HP-18 (355/400)
   2T:      イノ418/440 |      ゴン355/400 |      マ 53/ 53 |      主 81/ 81 |      ガ 62/ 62 |      カシム65000/65000
    マ: 防御
    カシム: 様子を見る
    ガ: 奇跡の石 to マ
    イノ: 痛恨の一撃(攻撃×2.5) to 主
      主: HP-87 (  0/ 81)
    ゴン: 痛恨の一撃(攻撃×2.5) to カシム
      カシム: HP-72 (64928/65000)
   3T:      イノ418/440 |      ゴン355/400 |      マ 53/ 53 | [死 ]主  0/ 81 |      ガ 62/ 62 |      カシム65000/65000
    マ: 防御
    イノ: 痛恨の一撃(攻撃×2.5) to ガ
      ガ: HP-75 (  0/ 62)
    ゴン: 攻撃 to カシム
      カシム: HP-28 (64972/65000)
    カシム: 斬りつける to イノ
      イノ: HP-31 (387/440)
   4T:      イノ387/440 |      ゴン355/400 |      マ 53/ 53 | [死 ]主  0/ 81 | [死 ]ガ  0/ 62 |      カシム65000/65000
    マ: 防御
    ゴン: 攻撃 to カシム
      カシム: HP-28 (64972/65000)
    イノ: 攻撃 to カシム
      カシム: HP-34 (64938/65000)
    カシム: 攻撃 to ゴン
      ゴン: HP-29 (326/400)
   5T:      イノ387/440 |      ゴン326/400 |      マ 53/ 53 | [死 ]主  0/ 81 | [死 ]ガ  0/ 62 |      カシム65000/65000
    マ: 防御
    イノ: 砂煙 to マ, カシム
      マ: +[暗6]
      カシム: +[暗6]
    ゴン: 攻撃 to カシム
      カシム: HP-29 (64971/65000)
    カシム: 斬りつける to ゴン
      missed to ゴン
   6T:      イノ387/440 |      ゴン326/400 | [暗6]マ 53/ 53 | [死 ]主  0/ 81 | [死 ]ガ  0/ 62 | [暗5]カシム65000/65000
    マ: 防御
    ゴン: 爪できりさく to マ
      マ: evaded
    イノ: 攻撃 to マ
      マ: HP-12 ( 41/ 53)
    カシム: 様子を見る
   7T:      イノ387/440 |      ゴン326/400 | [暗5]マ 41/ 53 | [死 ]主  0/ 81 | [死 ]ガ  0/ 62 | [暗4]カシム65000/65000
    マ: 防御
    カシム: 攻撃 to イノ
      missed to イノ
    イノ: 砂煙 to マ, カシム
    ゴン: 攻撃 to マ
      マ: HP-10 ( 31/ 53)
   8T:      イノ387/440 |      ゴン326/400 | [暗4]マ 31/ 53 | [死 ]主  0/ 81 | [死 ]ガ  0/ 62 | [暗3]カシム65000/65000
    マ: 防御
    ゴン: 尻尾 to マ
      マ: HP-11 ( 20/ 53)
    カシム: 様子を見る
    イノ: 痛恨の一撃(攻撃×2.5) to マ
      マ: evaded
   9T:      イノ387/440 |      ゴン326/400 | [暗3]マ 20/ 53 | [死 ]主  0/ 81 | [死 ]ガ  0/ 62 | [暗2]カシム65000/65000
    マ: 防御
    イノ: 攻撃 to マ
      マ: HP-13 (  7/ 53)
    ゴン: 尻尾 to カシム
      カシム: HP-37 (64963/65000)
    カシム: 斬りつける to イノ
      missed to イノ
  10T:      イノ387/440 |      ゴン326/400 | [暗2]マ  7/ 53 | [死 ]主  0/ 81 | [死 ]ガ  0/ 62 | [暗1]カシム65000/65000
    イノ: 砂煙 to マ, カシム
    ゴン: 攻撃 to マ
      マ: HP-23 (  0/ 53)
Lose!:      イノ387/440 |      ゴン326/400 | [死 ]マ  0/ 53 | [死 ]主  0/ 81 | [死 ]ガ  0/ 62 | [暗1]カシム65000/65000

                                    No.1      No.2      No.3
  Item on battle end
    Herb                         (7-0=)7   (7-0=)7  Infinity ; 薬草
    Leaf                         (0-0=)0   (1-0=)1   (1-0=)1 ; 世界樹の葉
```

## ToDo
- [ ] 使い方の改善(コマンドラインオプション)
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
