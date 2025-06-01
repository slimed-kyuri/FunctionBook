
## Function Book を取得

# writable_book_content に改行コードは使えない
give @s writable_book[custom_name='{"text": "Function Book", "color": "aqua"}', minecraft:enchantment_glint_override=1b, custom_data={item_tags: [fb.function_book]}, writable_book_content={pages: [{raw: "                       2ページ目以降からコマンドを記入                                       コマンド一覧:              /name <text>            - 名前を設定              /sneak <command>      - スニーク時のコマンド  を設定               /sprint <command>     - スプリント時のコマンド  を設定"}, {raw: ""}]}, lore=['[{"text": "2ページ目以降にコマンドを記入すると、", "italic": false}]', '[{"text": "Function Stickで実行可能になる。", "italic": false}]']]