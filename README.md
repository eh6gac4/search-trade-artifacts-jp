# Search & Trade Artifacts - Japanese

[Search & Trade Artifacts](https://steamcommunity.com/sharedfiles/filedetails/?id=2962238514)
（Steam Workshop ID: `2962238514`）の表示文を日本語化する追加Modです。

元Modのファイルは一切変更せず、`localization/japanese` 配下に日本語訳を追加するだけの
軽量な翻訳専用Modです。元Modの後に読み込まれる必要があります（Modリストで本Modを
「Search & Trade Artifacts」より下に配置してください）。

## 対応バージョン

- 元Mod: v0.17.1
- CK3: 1.19.*

## 導入

```bash
bash install.sh
```

CK3のランチャーで「Search & Trade Artifacts」→「Search & Trade Artifacts - Japanese」の
順にModを有効化してください。

## 翻訳方針

- 底本は元Modの `localization/english/*.yml`（他言語の既訳は参照しない）
- `[...]` のスクリプト参照・`$...$` のキー参照・書式タグ・アイコンコードは変更しない
- 用語はCK3バニラ日本語訳に準拠（例: rarity→レアリティ、durability→耐久度、artifact→遺物）

## 元Mod更新時の追従手順

1. Steam Workshop の元Modを最新化する
2. `bash tools/check_keys.sh <元Modのローカルパス>` で英語側とのキー差分を確認する
3. 追加・変更されたキーのみ日本語ファイルに反映する

## ライセンス

本Modは元Modのコンテンツを含みません（表示文の翻訳のみ）。
