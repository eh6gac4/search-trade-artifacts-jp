#!/bin/bash
# Search & Trade Artifacts - Japanese : CK3 mod ディレクトリへポインタ .mod を配置する
set -e

CK3_MOD_DIR="$HOME/.local/share/Paradox Interactive/Crusader Kings III/mod"
MOD_NAME="search-trade-artifacts-jp"
MOD_FILE="$CK3_MOD_DIR/$MOD_NAME.mod"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ ! -d "$CK3_MOD_DIR" ]; then
    echo "CK3 mod directory not found: $CK3_MOD_DIR" >&2
    exit 1
fi

cat "$REPO_DIR/descriptor.mod" > "$MOD_FILE"
echo "path=\"$REPO_DIR\"" >> "$MOD_FILE"

echo "Created: $MOD_FILE"
echo "Points to: $REPO_DIR"
echo ""
echo "CK3ランチャーで「Search & Trade Artifacts」の後にこのModを有効化してください。"
