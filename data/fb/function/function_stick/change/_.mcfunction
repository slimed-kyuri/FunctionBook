
## 棒の番号変更時

# プレイヤーの関数を取得
function fb:utils/get_player_id
function fb:utils/get_player_storage with storage fb: _
# 関数の数を取得
execute store result score #functionLen fb.number run data get storage fb: _.player.functions

# 棒の番号を取得
execute store result score #rotationPitch fb.number run data get entity @s Rotation[1] 100
execute store result score #functionNumber fb.number run data get entity @s SelectedItem.components.minecraft:custom_data.function_number
execute if score #rotationPitch fb.number matches 0.. run scoreboard players remove #functionNumber fb.number 1
execute unless score #rotationPitch fb.number matches 0.. run scoreboard players add #functionNumber fb.number 1
execute if score #functionNumber fb.number matches ..0 run scoreboard players operation #functionNumber fb.number = #functionLen fb.number
execute if score #functionNumber fb.number > #functionLen fb.number run scoreboard players set #functionNumber fb.number 1
execute store result storage fb: _.function_number int 1 run scoreboard players get #functionNumber fb.number

# 関数データを取得
scoreboard players operation #functionIndex fb.number = #functionNumber fb.number
execute store result storage fb: _.function_index int 1 run scoreboard players remove #functionIndex fb.number 1
function fb:function_stick/change/get_function with storage fb: _

# 棒にデータをセット
item modify entity @s weapon.mainhand fb:replace_function_number
item modify entity @s weapon.mainhand fb:replace_commands
item modify entity @s weapon.mainhand fb:replace_name