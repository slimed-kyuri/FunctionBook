
## アンインストール

# データパックを無効化
function fb:uninstall/disable_datapack with storage fb: _

# scoreboard
scoreboard objectives remove fb.number
scoreboard objectives remove fb.right_click

# storage
data remove storage fb: _


tellraw @s [{"text": "[fb] ", "color": "yellow"}, {"text": "アンインストールが完了しました。", "color": "green"}]
tellraw @s [{"text": "[fb] ", "color": "yellow"}, {"text": "/datapack enable <name>" ,"color": "gray"}, {"text": " で再インストールできます。", "color": "green"}]