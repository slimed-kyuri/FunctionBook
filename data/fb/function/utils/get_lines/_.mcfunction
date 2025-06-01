
## テキストを改行位置で分割
# in storage:
# "fb:" "_.in"
# out storage:
# "fb:" "_.lines"

data modify storage fb: _._3 set from storage fb: _.in
data modify storage fb: _.lines set value []
function fb:utils/get_lines/loop