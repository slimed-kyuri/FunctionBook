
## そのプレイヤーのストレージに本の内容を保存
# in storage:
# "player_id"
# out storage:
# "fb:" "_.players.<player_id>.writable_book"
# out score:
# "fb" "changeWritableBook"

$execute store success score #changeWritableBook fb.number run data modify storage fb: _.players.$(player_id).writable_book set from entity @s SelectedItem.components."minecraft:writable_book_content".pages