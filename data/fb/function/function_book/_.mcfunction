
## 本の内容を保存

# 本の内容をプレイヤーストレージに保存
function fb:utils/get_player_id
function fb:function_book/set_player_book_text with storage fb: _

# 本編集時
execute if score #changeWritableBook fb.number matches 1 run function fb:function_book/on_book_edit
