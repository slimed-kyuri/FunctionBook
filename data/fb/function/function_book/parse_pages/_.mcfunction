
## 全ページをパース

execute store result score #pages fb.number run data get storage fb: _.player.writable_book
scoreboard players set #j fb.number 1
function fb:function_book/parse_pages/remove_player_functions with storage fb: _
function fb:function_book/parse_pages/loop