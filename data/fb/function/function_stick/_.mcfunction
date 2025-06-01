
## コマンドを実行

data modify storage fb: _.commands set from entity @s SelectedItem.components.minecraft:custom_data.commands
data modify storage fb: _.run set from storage fb: _.commands.command
execute if predicate fb:is_sneak run data modify storage fb: _.run set from storage fb: _.commands.sneak
execute if predicate fb:is_sprint run data modify storage fb: _.run set from storage fb: _.commands.sprint
execute unless predicate fb:is_sneak_and_sprint run function fb:function_stick/run with storage fb: _
execute if predicate fb:is_sneak_and_sprint run function fb:function_stick/change/_