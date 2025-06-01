
## ページをループ

# ページを取得
execute store result storage fb: _.page_number int 1 run scoreboard players get #j fb.number
function fb:function_book/parse_pages/get_page with storage fb: _

# ページをパース
data modify storage fb: _.page set from storage fb: _.player.text
function fb:function_book/parse_pages/parse_lines/_
# ストレージに保存
scoreboard players operation #functionIndex fb.number = #j fb.number
execute store result storage fb: _.function_index int 1 run scoreboard players remove #functionIndex fb.number 1
function fb:function_book/parse_pages/set_storage with storage fb: _

# ループ処理
scoreboard players add #j fb.number 1
execute if score #j fb.number < #pages fb.number run function fb:function_book/parse_pages/loop