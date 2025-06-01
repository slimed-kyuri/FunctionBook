
## テキストをパース

# /name の場合
data modify storage fb: _._ set value "/name"
execute store success score #isNotBookCommand fb.number run data modify storage fb: _._ set string storage fb: _.text 0 5
execute unless score #isNotBookCommand fb.number matches 1 run data modify storage fb: _.name set string storage fb: _.text 6

# コマンドの場合
data modify storage fb: _._ set value "/"
execute store success score #isCommand fb.number run data modify storage fb: _._ set string storage fb: _.text 0 1
execute if score #isCommand fb.number matches 1 run data modify storage fb: _.commands.command set from storage fb: _.text

# /sneak の場合
data modify storage fb: _._ set value "/sneak"
execute store success score #isNotBookCommand fb.number run data modify storage fb: _._ set string storage fb: _.text 0 6
execute unless score #isNotBookCommand fb.number matches 1 run data modify storage fb: _.commands.sneak set string storage fb: _.text 7

# /sprint の場合
data modify storage fb: _._ set value "/sprint"
execute store success score #isNotBookCommand fb.number run data modify storage fb: _._ set string storage fb: _.text 0 7
execute unless score #isNotBookCommand fb.number matches 1 run data modify storage fb: _.commands.sprint set string storage fb: _.text 8
