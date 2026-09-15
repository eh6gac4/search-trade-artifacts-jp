#!/bin/bash
# 元Modの英語キーと本Modの日本語キーを突き合わせ、欠落・余剰・重複を報告する
# Usage: bash tools/check_keys.sh <元Modのローカルパス>
set -e

SRC="$1"
if [ -z "$SRC" ] || [ ! -d "$SRC" ]; then
    echo "Usage: bash tools/check_keys.sh <元Modのローカルパス>" >&2
    exit 1
fi

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

extract_keys() {
    # 先頭コメント行・空行を除き、"キー名:バージョン番号" 部分だけ抜き出す
    grep -hoE '^\s*[A-Za-z0-9_.]+:[0-9]*' "$@" 2>/dev/null | sed -E 's/^\s*//; s/:[0-9]*$//' | sort
}

check_pair() {
    local label="$1" en_glob="$2" ja_glob="$3"
    local en_keys ja_keys missing extra dup
    en_keys=$(extract_keys $en_glob)
    ja_keys=$(extract_keys $ja_glob)

    missing=$(comm -23 <(echo "$en_keys" | sort -u) <(echo "$ja_keys" | sort -u))
    extra=$(comm -13 <(echo "$en_keys" | sort -u) <(echo "$ja_keys" | sort -u))
    dup=$(echo "$ja_keys" | sort | uniq -d)

    echo "=== $label ==="
    if [ -z "$missing" ] && [ -z "$extra" ] && [ -z "$dup" ]; then
        echo "OK ($(echo "$ja_keys" | grep -c .) keys)"
    else
        [ -n "$missing" ] && { echo "--- 訳し漏れ(EN側にあってJA側にない):"; echo "$missing"; }
        [ -n "$extra" ] && { echo "--- 余剰(JA側にのみある):"; echo "$extra"; }
        [ -n "$dup" ] && { echo "--- JA側の重複キー:"; echo "$dup"; }
    fi
    echo
}

check_pair "メイン localization" \
    "$SRC/localization/english/*.yml" \
    "$REPO_DIR/localization/japanese/*.yml"

check_pair "replace localization" \
    "$SRC/localization/replace/english/*.yml" \
    "$REPO_DIR/localization/replace/japanese/*.yml"
