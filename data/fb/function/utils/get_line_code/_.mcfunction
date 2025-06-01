
## raw状態での改行コード(\nで取得できないやつ)を取得
# out storage:
# "fb:" "_.line_code"

summon armor_stand 0 0 0 {Health: 10000000, NoAI: true, Invisible: true, HandItems: [{id: "stick", count: 1b}, {}], Tags: ["fb.", "fb.line_code"]}
execute as @e[tag=fb.line_code, limit=1] run function fb:utils/get_line_code/as