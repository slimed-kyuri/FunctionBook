
## 改行コード毎にループ

# 改行コードのインデックスを取得
function fb:utils/get_line_code_index/_

# 行を取得
data modify storage fb: _.in set from storage fb: _._3
data modify storage fb: _.in2 set value 0
data modify storage fb: _.in3 set value 0
execute unless score #index fb.number matches -1 store result storage fb: _.in3 int 1 run scoreboard players get #index fb.number
function fb:utils/get_string_text with storage fb: _
data modify storage fb: _.lines append from storage fb: _.out

# それ以外のテキストを取得
data modify storage fb: _.in set from storage fb: _._3
scoreboard players operation #index2 fb.number = #index fb.number
execute store result storage fb: _.in2 int 1 run scoreboard players add #index2 fb.number 1
data modify storage fb: _.in3 set value 0
function fb:utils/get_string_text with storage fb: _
data modify storage fb: _._3 set from storage fb: _.out

# 改行コードが存在していたらループ
data modify storage fb: _.in set from storage fb: _._3
execute unless score #index fb.number matches -1 run function fb:utils/get_lines/loop