
## テキストを分割
# in storage:
# "fb:" "_.in": テキスト
# "in2": 最初のインデックス
# "in3": 最後のインデックス
# out storage:
# "fb:" "_.out"

data modify storage fb: _._ set value 0
execute store success score #bool fb.number run data modify storage fb: _._ set from storage fb: _.in3
$execute unless score #bool fb.number matches 1 run data modify storage fb: _.out set string storage fb: _.in $(in2)
$execute if score #bool fb.number matches 1 run data modify storage fb: _.out set string storage fb: _.in $(in2) $(in3)