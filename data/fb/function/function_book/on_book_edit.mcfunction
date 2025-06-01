
## 本が編集された時

# プレイヤーのストレージを取得
function fb:utils/get_player_storage with storage fb: _

# 全ページをパース
execute if data storage fb: _.line_code run function fb:function_book/parse_pages/_
# 改行コードが正しく取得されていない場合
execute unless data storage fb: _.line_code run tellraw @s [{"text": "[fb] ", "color": "yellow"}, {"text": "エラー: ", "color": "red"}, {"text": "/reload", "color": "gray", "clickEvent": {"action": "suggest_command", "value": "/reload"}}, {"text": " を実行してください。"}]