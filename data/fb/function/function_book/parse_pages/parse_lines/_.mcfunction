
## 行をパース

# 改行で分割
data modify storage fb: _.in set from storage fb: _.page
function fb:utils/get_lines/_

# 行でループ
data modify storage fb: _.name set value "Function Stick"
data remove storage fb: _.commands
execute store result score #linesLen fb.number run data get storage fb: _.lines
scoreboard players set #i fb.number 0
function fb:function_book/parse_pages/parse_lines/loop