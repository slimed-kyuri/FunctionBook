
## プレイヤーのストレージを取得
# in storage:
# "player_id"
# out storage:
# "fb:" "_.player"

$data modify storage fb: _.player set from storage fb: _.players.$(player_id)