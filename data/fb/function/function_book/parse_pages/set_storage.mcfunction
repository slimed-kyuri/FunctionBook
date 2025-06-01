
## name と command をプレイヤーストレージに保存

$data modify storage fb: _.players.$(player_id).functions append from storage value {}
$data modify storage fb: _.players.$(player_id).functions[$(function_index)].name set from storage fb: _.name
$data modify storage fb: _.players.$(player_id).functions[$(function_index)].commands set from storage fb: _.commands