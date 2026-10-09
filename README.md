# Search & Trade Artifacts - Japanese

[Search & Trade Artifacts](https://steamcommunity.com/sharedfiles/filedetails/?id=2962238514)
（Steam Workshop ID: `2962238514`）の表示文を日本語化する追加Modです。

元Modのファイルは一切変更せず、`localization/japanese` 配下に日本語訳を追加するだけの
軽量な翻訳専用Modです。元Modの後に読み込まれる必要があります（Modリストで本Modを
「Search & Trade Artifacts」より下に配置してください）。

## 対応バージョン

- 元Mod: v0.18.0
- CK3: 1.20.*

元Mod v0.17.1 → v0.18.0 の英語ローカライズに変更がないことと、
全340キー（通常332・replace 8）の一致を確認しています。
CK3 1.20.0.4 に対するゲーム内の表示・動作確認は未実施です。

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

本Modは [GPL-3.0](LICENSE) の下で公開されています。元Mod
（[pharaox/artifact_trade](https://github.com/pharaox/artifact_trade)、GPL-3.0）の
ローカライズキー構造をもとにした派生物であり、コンテンツ（スクリプト・GUI・グラフィック等）は
含まず表示文の翻訳のみを追加します。
