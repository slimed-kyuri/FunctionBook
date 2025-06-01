
## 行でループ

# テキストをパース
data modify storage fb: _.text set from storage fb: _.lines[0]
data remove storage fb: _.lines[0]
function fb:function_book/parse_pages/parse_lines/parse_text

# 行の数までループ
scoreboard players add #i fb.number 1
execute if score #i fb.number < #linesLen fb.number run function fb:function_book/parse_pages/parse_lines/loop