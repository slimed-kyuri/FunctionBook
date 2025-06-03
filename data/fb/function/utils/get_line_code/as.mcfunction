
## エンティティを対象に実行

item modify entity @s weapon.mainhand fb:get_line_code
data modify storage fb: _.line_code set string entity @s HandItems[0].components."minecraft:custom_data".line_code -1
kill @s