
## 初期化

# scoreboard
scoreboard objectives add fb.right_click used:carrot_on_a_stick
scoreboard objectives add fb.number dummy

# storage
# データパックの名前
data modify storage fb: _.datapack_name set value "FunctionBookDP-v1.0"
# raw状態での改行コード(\nで取得できないやつ)を取得
execute unless data storage fb: _.line_code run function fb:utils/get_line_code/_