#!/bin/bash

ls -la
ZAPRET_VERSION="72.9"
NFQWS_DIR="padavan-ng/trunk/user/nfqws"
echo "Cleaning old zapret files..."
rm -rf "$NFQWS_DIR"/zapret-* "$NFQWS_DIR"/zapretsh-main
rm -f "$NFQWS_DIR"/*.tar.gz
echo "✓ Old zapret files cleaned"
CURRENT_VERSION=$(grep -E '^SRC_VER\s*=\s*[0-9.]+' "$NFQWS_DIR/Makefile" | head -1 | awk -F'=' '{print $2}' | tr -d ' ')
[[ -z "$CURRENT_VERSION" ]] && echo "Cannot detect zapret version" && exit 1
echo "Updating zapret from $CURRENT_VERSION to $ZAPRET_VERSION"
sed -i "s/^SRC_VER = $CURRENT_VERSION/SRC_VER = $ZAPRET_VERSION/" "$NFQWS_DIR/Makefile"
grep -q "^SRC_VER = $ZAPRET_VERSION" "$NFQWS_DIR/Makefile" && echo "✓ Zapret version updated" || (echo "Update failed" && exit 1)
echo "Done."
