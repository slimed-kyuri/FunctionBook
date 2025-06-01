
## プレイヤーIDを取得
# out storage:
# "fb:" "_.player_id"

loot spawn ~ ~5 ~ loot fb:player_head
data modify storage fb: _.player_id set from entity @e[limit=1, type=item, nbt={Item: {id: "minecraft:player_head", components: {"minecraft:custom_data": {item_tags: ["fb.function_book"]}}}}] Item.components.minecraft:profile.name
kill @e[limit=1, type=item, nbt={Item: {id: "minecraft:player_head", components: {"minecraft:custom_data": {item_tags: ["fb.function_book"]}}}}]