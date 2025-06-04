
## アンインストール

# データパックを無効化
datapack disable "file/FunctionBook"

# scoreboard
scoreboard objectives remove fb.number
scoreboard objectives remove fb.right_click

# storage
data remove storage fb: _


tellraw @s [{"text": "[fb] ", "color": "green"}, {"text": "アンインストールが完了しました。", "color": "yellow"}]
tellraw @s [{"text": "[fb] ", "color": "green"}, {"text": "/datapack enable \"file/FunctionBook\"" ,"color": "gray", "click_event": {"action": "suggest_command", "command": "/datapack enable \"file/FunctionBook\""}}, {"text": " で再インストールできます。", "color": "yellow"}]