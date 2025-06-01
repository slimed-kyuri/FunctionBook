
## インデックスを指定してコマンドを取得
# in storage:
# "function_index"
# out storage:
# "fb:" "_.name"
# "fb:" "_.command"

$data modify storage fb: _.function set from storage fb: _.player.functions[$(function_index)]