
## ループ

data modify storage fb: _._2 set from storage fb: _.line_code
execute store success score #bool fb.number run data modify storage fb: _._2 set string storage fb: _._ 0 1
data modify storage fb: _._ set string storage fb: _._ 1

scoreboard players add #i fb.number 1
execute if score #i fb.number = #len fb.number run scoreboard players set #i fb.number -1
execute if score #bool fb.number matches 1 unless score #i fb.number matches -1 run function fb:utils/get_line_code_index/loop