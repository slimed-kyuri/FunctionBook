
## 初期化


# scoreboard
scoreboard objectives add fb.right_click used:carrot_on_a_stick
scoreboard objectives add fb.number dummy

# storage
# データパックの名前
data modify storage fb: _.datapack_name set value "FunctionBook"
data modify storage fb: _.datapack_version set value "MC1.21.5-v1.1.0"
# raw状態での改行コード(\nで取得できないやつ)を取得
execute unless data storage fb: _.line_code run data modify storage fb: _.line_code set value "\\n"

# text
tellraw @a [{"text": "[fb] ", "color": "green"}, {"text": "", "color": "aqua", "extra": [{"storage": "fb:", "nbt": "_.datapack_name"}, "-", {"storage": "fb:", "nbt": "_.datapack_version"}]}, {"text": " がインストールされました。", "color": "yellow"}]

# init
data modify storage fb: _.init set value true