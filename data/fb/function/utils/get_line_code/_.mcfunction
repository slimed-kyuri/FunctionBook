
## raw状態での改行コード(\nで取得できないやつ)を取得
# out storage:
# "fb:" "_.line_code"

execute as @a[limit=1] at @s run summon armor_stand ~ ~10 ~ {Health: 100000000, NoAI: true, Invisible: false, HandItems: [{id: "stick", count: 1b}, {}], Tags: ["fb.", "fb.line_code"]}
execute as @e[tag=fb.line_code, limit=1] run function fb:utils/get_line_code/as