
## 本が編集された時

# プレイヤーのストレージを取得
function fb:utils/get_player_storage with storage fb: _

# 改行コードが正しく取得されていない場合は取得
execute unless data storage fb: _.line_code run function fb:utils/get_line_code/_
execute unless data storage fb: _.line_code run tellraw @s [{"text": "[fb] ", "color": "green"}, {"text": "Error: ", "color": "red"}, {"text": "改行コードが取得できていません。", "color": "red"}]

# 全ページをパース
execute if data storage fb: _.line_code run function fb:function_book/parse_pages/_