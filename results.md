<!-- TOC depthFrom:1 depthTo:3 insertAnchor:false orderedList:false -->

- [シミュレーション結果](#シミュレーション結果)
  - [[ping値マリベル石](./lib/Party_Pingval.rb)](#ping値マリベル石libparty_pingvalrb)
    - [葉: 主1マ1](#葉-主1マ1)
    - [葉: 主1マ0](#葉-主1マ0)
    - [葉: 主0マ1](#葉-主0マ1)
    - [葉: 主0マ0](#葉-主0マ0)

<!-- /TOC -->

# シミュレーション結果

| 戦術 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 |
| :---: | :---: | :---: | :---: | :---: |
| ping値マリベル石 | 11 | 83.48% | 21.98 | 1.14 |
| ping値マリベル石 | 10 | 76.86% | 21.86 | 1.18 |

## [ping値マリベル石](./lib/Party_Pingval.rb)

10万回試行

| 条件 | マリベルLv | 勝率 | 勝利時平均ターン数 | 勝利時平均世葉消費数 |
| :---: | :---: | :---: | :---: | :---: |
| 葉: 主1マ1 | 11 | 83.48% | 21.98 | 1.14 |
| 葉: 主1マ0 | 11 | 59.68% | 23.44 | 1.71 |
| 葉: 主0マ1 | 11 | 67.46% | 22.00 | 1.69 |
| 葉: 主0マ0 | 11 | 39.07% | 23.15 | 2.00 |
| 葉: 主1マ1 | 10 | 76.86% | 21.86 | 1.18 |
| 葉: 主1マ0 | 10 | 52.94% | 23.13 | 1.73 |
| 葉: 主0マ1 | 10 | 57.12% | 21.70 | 1.67 |
| 葉: 主0マ0 | 10 | 32.07% | 22.75 | 2.00 |

### 葉: 主1マ1

```
N: 100000
Log Timing: none

Party: #<Proc:0x000000000634afe8 Party_Pingval.rb:181 (lambda)>
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
    Herb                               3         7  Infinity ; 薬草
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

Win rate:	83.48%
* Win
  Ave. turn count: 21.98
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      15.41%     5.33%     3.42%
    Ave. HP on battle end          43.03     67.94     59.27
    Ave. Herb count                 0.19      1.72       NaN
    Ave. Leaf count                 0.00      0.58      0.56
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        0    24.48%
        1    37.18%
        2    38.34%
    Ave.       1.14
  Troop:
                                    No.1      No.2
    Death rate on battle end     100.00%   100.00%
    Ave. HP on battle end           0.00      0.00

* Lose
  Ave. turn count: 20.84
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end     100.00%   100.00%   100.00%
    Ave. HP on battle end           0.00      0.00      0.00
    Ave. Herb count                 0.19      1.27       NaN
    Ave. Leaf count                 0.00      0.65      0.79
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        0     6.38%
        1    43.86%
        2    49.76%
    Ave.       1.43
  Troop:
                                    No.1      No.2
    Death rate on battle end       4.65%     6.70%
    Ave. HP on battle end         138.56    126.67

* Both
  Ave. turn count: 21.79
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      29.38%    20.97%    19.38%
    Ave. HP on battle end          35.92     56.71     49.48
    Ave. Herb count                 0.19      1.65       NaN
    Ave. Leaf count                 0.00      0.59      0.59
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        0    21.49%
        1    38.28%
        2    40.23%
    Ave.       1.19
  Troop:
                                    No.1      No.2
    Death rate on battle end      84.25%    84.59%
    Ave. HP on battle end          22.89     20.93

N: 100000
Log Timing: none

Party: #<Proc:0x000000000634afe8 Party_Pingval.rb:181 (lambda)>
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

Win rate:	76.86%
* Win
  Ave. turn count: 21.86
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      16.23%     4.68%     6.57%
    Ave. HP on battle end          42.19     67.69     48.61
    Ave. Herb count                 0.20      1.59       NaN
    Ave. Leaf count                 0.00      0.62      0.56
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        0    22.58%
        1    37.08%
        2    40.34%
    Ave.       1.18
  Troop:
                                    No.1      No.2
    Death rate on battle end     100.00%   100.00%
    Ave. HP on battle end           0.00      0.00

* Lose
  Ave. turn count: 19.48
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end     100.00%   100.00%   100.00%
    Ave. HP on battle end           0.00      0.00      0.00
    Ave. Herb count                 0.21      1.18       NaN
    Ave. Leaf count                 0.00      0.72      0.69
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        0     9.02%
        1    41.41%
        2    49.57%
    Ave.       1.41
  Troop:
                                    No.1      No.2
    Death rate on battle end       4.11%     5.77%
    Ave. HP on battle end         148.01    134.67

* Both
  Ave. turn count: 21.31
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      35.62%    26.74%    28.19%
    Ave. HP on battle end          32.43     52.03     37.36
    Ave. Herb count                 0.20      1.49       NaN
    Ave. Leaf count                 0.00      0.64      0.59
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        0    19.44%
        1    38.08%
        2    42.48%
    Ave.       1.23
  Troop:
                                    No.1      No.2
    Death rate on battle end      77.81%    78.20%
    Ave. HP on battle end          34.25     31.16


[Done] exited with code=0 in 1222.19 seconds

[Running] ruby < "c:\salon\game\research\a.txt" "c:\salon\game\research\dq7\psdq7_InoGon_simulator\psdq7_InoGon_simulator.rb"
N: 100000
Log Timing: none

Party: #<Proc:0x00000000062cac08 Party_Pingval.rb:181 (lambda)>
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
    Herb                               3         7  Infinity ; 薬草
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

Win rate:	59.68%
* Win
  Ave. turn count: 23.44
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      33.13%    10.59%     5.44%
    Ave. HP on battle end          32.77     64.37     55.47
    Ave. Herb count                 0.24      1.64       NaN
    Ave. Leaf count                 0.00      0.71      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    28.70%
        2    71.30%
    Ave.       1.71
  Troop:
                                    No.1      No.2
    Death rate on battle end     100.00%   100.00%
    Ave. HP on battle end           0.00      0.00

* Lose
  Ave. turn count: 19.47
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end     100.00%   100.00%   100.00%
    Ave. HP on battle end           0.00      0.00      0.00
    Ave. Herb count                 0.17      0.87       NaN
    Ave. Leaf count                 0.00      0.55      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    45.07%
        2    54.93%
    Ave.       1.55
  Troop:
                                    No.1      No.2
    Death rate on battle end       3.01%     4.70%
    Ave. HP on battle end         171.67    153.90

* Both
  Ave. turn count: 21.84
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      60.09%    46.64%    43.56%
    Ave. HP on battle end          19.56     38.42     33.11
    Ave. Herb count                 0.21      1.33       NaN
    Ave. Leaf count                 0.00      0.65      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    35.30%
        2    64.70%
    Ave.       1.65
  Troop:
                                    No.1      No.2
    Death rate on battle end      60.90%    61.58%
    Ave. HP on battle end          69.21     62.05

N: 100000
Log Timing: none

Party: #<Proc:0x00000000062cac08 Party_Pingval.rb:181 (lambda)>
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

Win rate:	52.94%
* Win
  Ave. turn count: 23.13
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      33.69%     9.07%     9.44%
    Ave. HP on battle end          32.16     64.38     44.92
    Ave. Herb count                 0.25      1.51       NaN
    Ave. Leaf count                 0.00      0.73      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    26.69%
        2    73.31%
    Ave.       1.73
  Troop:
                                    No.1      No.2
    Death rate on battle end     100.00%   100.00%
    Ave. HP on battle end           0.00      0.00

* Lose
  Ave. turn count: 18.47
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end     100.00%   100.00%   100.00%
    Ave. HP on battle end           0.00      0.00      0.00
    Ave. Herb count                 0.19      0.85       NaN
    Ave. Leaf count                 0.00      0.62      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    37.85%
        2    62.15%
    Ave.       1.62
  Troop:
                                    No.1      No.2
    Death rate on battle end       2.97%     4.35%
    Ave. HP on battle end         175.38    158.05

* Both
  Ave. turn count: 20.94
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      64.90%    51.86%    52.06%
    Ave. HP on battle end          17.03     34.08     23.78
    Ave. Herb count                 0.22      1.20       NaN
    Ave. Leaf count                 0.00      0.68      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    31.94%
        2    68.06%
    Ave.       1.68
  Troop:
                                    No.1      No.2
    Death rate on battle end      54.34%    54.99%
    Ave. HP on battle end          82.53     74.38
```

### 葉: 主1マ0

```
N: 100000
Log Timing: none

Party: #<Proc:0x00000000062cac08 Party_Pingval.rb:181 (lambda)>
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
    Herb                               3         7  Infinity ; 薬草
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

Win rate:	59.68%
* Win
  Ave. turn count: 23.44
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      33.13%    10.59%     5.44%
    Ave. HP on battle end          32.77     64.37     55.47
    Ave. Herb count                 0.24      1.64       NaN
    Ave. Leaf count                 0.00      0.71      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    28.70%
        2    71.30%
    Ave.       1.71
  Troop:
                                    No.1      No.2
    Death rate on battle end     100.00%   100.00%
    Ave. HP on battle end           0.00      0.00

* Lose
  Ave. turn count: 19.47
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end     100.00%   100.00%   100.00%
    Ave. HP on battle end           0.00      0.00      0.00
    Ave. Herb count                 0.17      0.87       NaN
    Ave. Leaf count                 0.00      0.55      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    45.07%
        2    54.93%
    Ave.       1.55
  Troop:
                                    No.1      No.2
    Death rate on battle end       3.01%     4.70%
    Ave. HP on battle end         171.67    153.90

* Both
  Ave. turn count: 21.84
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      60.09%    46.64%    43.56%
    Ave. HP on battle end          19.56     38.42     33.11
    Ave. Herb count                 0.21      1.33       NaN
    Ave. Leaf count                 0.00      0.65      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    35.30%
        2    64.70%
    Ave.       1.65
  Troop:
                                    No.1      No.2
    Death rate on battle end      60.90%    61.58%
    Ave. HP on battle end          69.21     62.05

N: 100000
Log Timing: none

Party: #<Proc:0x00000000062cac08 Party_Pingval.rb:181 (lambda)>
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

Win rate:	52.94%
* Win
  Ave. turn count: 23.13
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      33.69%     9.07%     9.44%
    Ave. HP on battle end          32.16     64.38     44.92
    Ave. Herb count                 0.25      1.51       NaN
    Ave. Leaf count                 0.00      0.73      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    26.69%
        2    73.31%
    Ave.       1.73
  Troop:
                                    No.1      No.2
    Death rate on battle end     100.00%   100.00%
    Ave. HP on battle end           0.00      0.00

* Lose
  Ave. turn count: 18.47
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end     100.00%   100.00%   100.00%
    Ave. HP on battle end           0.00      0.00      0.00
    Ave. Herb count                 0.19      0.85       NaN
    Ave. Leaf count                 0.00      0.62      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    37.85%
        2    62.15%
    Ave.       1.62
  Troop:
                                    No.1      No.2
    Death rate on battle end       2.97%     4.35%
    Ave. HP on battle end         175.38    158.05

* Both
  Ave. turn count: 20.94
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      64.90%    51.86%    52.06%
    Ave. HP on battle end          17.03     34.08     23.78
    Ave. Herb count                 0.22      1.20       NaN
    Ave. Leaf count                 0.00      0.68      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    31.94%
        2    68.06%
    Ave.       1.68
  Troop:
                                    No.1      No.2
    Death rate on battle end      54.34%    54.99%
    Ave. HP on battle end          82.53     74.38
```

### 葉: 主0マ1

```
N: 100000
Log Timing: none

Party: #<Proc:0x00000000062bb320 Party_Pingval.rb:181 (lambda)>
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
    Herb                               3         7  Infinity ; 薬草
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

Win rate:	67.46%
* Win
  Ave. turn count: 22.00
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      30.71%     6.83%     6.22%
    Ave. HP on battle end          34.90     65.95     55.59
    Ave. Herb count                 0.18      1.66       NaN
    Ave. Leaf count                 0.00      1.00      0.69
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    31.38%
        2    68.62%
    Ave.       1.69
  Troop:
                                    No.1      No.2
    Death rate on battle end     100.00%   100.00%
    Ave. HP on battle end           0.00      0.00

* Lose
  Ave. turn count: 18.86
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end     100.00%   100.00%   100.00%
    Ave. HP on battle end           0.00      0.00      0.00
    Ave. Herb count                 0.17      1.23       NaN
    Ave. Leaf count                 0.00      1.00      0.72
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    27.74%
        2    72.26%
    Ave.       1.72
  Troop:
                                    No.1      No.2
    Death rate on battle end       3.50%     5.26%
    Ave. HP on battle end         157.23    142.56

* Both
  Ave. turn count: 20.98
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      53.26%    37.15%    36.74%
    Ave. HP on battle end          23.54     44.49     37.50
    Ave. Herb count                 0.18      1.52       NaN
    Ave. Leaf count                 0.00      1.00      0.70
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    30.20%
        2    69.80%
    Ave.       1.70
  Troop:
                                    No.1      No.2
    Death rate on battle end      68.60%    69.17%
    Ave. HP on battle end          51.16     46.39

N: 100000
Log Timing: none

Party: #<Proc:0x00000000062bb320 Party_Pingval.rb:181 (lambda)>
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

Win rate:	57.12%
* Win
  Ave. turn count: 21.70
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      29.37%     5.75%    10.48%
    Ave. HP on battle end          35.21     65.81     45.13
    Ave. Herb count                 0.18      1.51       NaN
    Ave. Leaf count                 0.00      1.00      0.67
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    33.07%
        2    66.93%
    Ave.       1.67
  Troop:
                                    No.1      No.2
    Death rate on battle end     100.00%   100.00%
    Ave. HP on battle end           0.00      0.00

* Lose
  Ave. turn count: 17.25
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end     100.00%   100.00%   100.00%
    Ave. HP on battle end           0.00      0.00      0.00
    Ave. Herb count                 0.19      1.12       NaN
    Ave. Leaf count                 0.00      1.00      0.60
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    40.35%
        2    59.65%
    Ave.       1.60
  Troop:
                                    No.1      No.2
    Death rate on battle end       3.01%     4.31%
    Ave. HP on battle end         173.17    158.19

* Both
  Ave. turn count: 19.79
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      59.66%    46.16%    48.86%
    Ave. HP on battle end          20.11     37.59     25.78
    Ave. Herb count                 0.19      1.34       NaN
    Ave. Leaf count                 0.00      1.00      0.64
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        1    36.19%
        2    63.81%
    Ave.       1.64
  Troop:
                                    No.1      No.2
    Death rate on battle end      58.41%    58.97%
    Ave. HP on battle end          74.25     67.83
```

### 葉: 主0マ0

```
N: 100000
Log Timing: none

Party: #<Proc:0x00000000061dabb8 Party_Pingval.rb:181 (lambda)>
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
    Herb                               3         7  Infinity ; 薬草
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

Win rate:	39.07%
* Win
  Ave. turn count: 23.15
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      59.55%    11.52%     9.10%
    Ave. HP on battle end          19.66     61.61     49.74
    Ave. Herb count                 0.20      1.57       NaN
    Ave. Leaf count                 0.00      1.00      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        2   100.00%
    Ave.       2.00
  Troop:
                                    No.1      No.2
    Death rate on battle end     100.00%   100.00%
    Ave. HP on battle end           0.00      0.00

* Lose
  Ave. turn count: 17.44
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end     100.00%   100.00%   100.00%
    Ave. HP on battle end           0.00      0.00      0.00
    Ave. Herb count                 0.12      0.85       NaN
    Ave. Leaf count                 0.00      1.00      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        2   100.00%
    Ave.       2.00
  Troop:
                                    No.1      No.2
    Death rate on battle end       2.40%     3.56%
    Ave. HP on battle end         182.15    165.33

* Both
  Ave. turn count: 19.67
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      84.20%    65.43%    64.48%
    Ave. HP on battle end           7.68     24.07     19.43
    Ave. Herb count                 0.15      1.13       NaN
    Ave. Leaf count                 0.00      1.00      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        2   100.00%
    Ave.       2.00
  Troop:
                                    No.1      No.2
    Death rate on battle end      40.54%    41.24%
    Ave. HP on battle end         110.97    100.73

N: 100000
Log Timing: none

Party: #<Proc:0x00000000061dabb8 Party_Pingval.rb:181 (lambda)>
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

Win rate:	32.07%
* Win
  Ave. turn count: 22.75
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      57.59%     9.65%    13.77%
    Ave. HP on battle end          20.38     61.69     39.86
    Ave. Herb count                 0.21      1.42       NaN
    Ave. Leaf count                 0.00      1.00      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        2   100.00%
    Ave.       2.00
  Troop:
                                    No.1      No.2
    Death rate on battle end     100.00%   100.00%
    Ave. HP on battle end           0.00      0.00

* Lose
  Ave. turn count: 16.19
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end     100.00%   100.00%   100.00%
    Ave. HP on battle end           0.00      0.00      0.00
    Ave. Herb count                 0.13      0.80       NaN
    Ave. Leaf count                 0.00      1.00      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        2   100.00%
    Ave.       2.00
  Troop:
                                    No.1      No.2
    Death rate on battle end       2.00%     3.04%
    Ave. HP on battle end         193.89    176.35

* Both
  Ave. turn count: 18.29
  Party:
                                    No.1      No.2      No.3
    Death rate on battle end      86.40%    71.02%    72.34%
    Ave. HP on battle end           6.54     19.79     12.78
    Ave. Herb count                 0.16      1.00       NaN
    Ave. Leaf count                 0.00      1.00      1.00
  Distribution of Leaf count: ; 世界樹の葉消費数の分布
        2   100.00%
    Ave.       2.00
  Troop:
                                    No.1      No.2
    Death rate on battle end      33.43%    34.14%
    Ave. HP on battle end         131.70    119.79
```
