
## 改行コードのインデックスを取得
# in storage:
# "fb:" "_.in"
# out score:
# "fb.number" "#index"

data modify storage fb: _._ set from storage fb: _.in

execute store result score #len fb.number run data get storage fb: _._
scoreboard players set #i fb.number 0
function fb:utils/get_line_code_index/loop

scoreboard players operation #index fb.number = #i fb.number
execute unless score #i fb.number matches -1 run scoreboard players remove #index fb.number 1