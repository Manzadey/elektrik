#!/usr/bin/env bash
# Установка скилла elektrik в OpenAI Codex без маркетплейса плагинов:
#   curl -fsSL https://raw.githubusercontent.com/Manzadey/elektrik/main/install-codex.sh | bash
#
# Удаление:
#   ... | bash -s -- --uninstall
#
# Ставит скилл в ~/.agents/skills/elektrik — пользовательский каталог скиллов Codex
# (~/.codex/skills Codex считает устаревшим). Вызов в Codex: $elektrik [уровень] [текст].
set -euo pipefail

DEST="${ELEKTRIK_SKILLS_DIR:-$HOME/.agents/skills}/elektrik"
RAW="${RAW:-https://raw.githubusercontent.com/Manzadey/elektrik/main}"
FILES="SKILL.md references/slovar.md references/sceny.md references/original.md references/terminy.md references/LICENSE-pohuy"

if [ "${1:-}" = "--uninstall" ]; then
  rm -rf "$DEST"
  echo "elektrik удалён из $DEST. Перезапусти codex."
  exit 0
fi

SELF_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-/dev/null}")" 2>/dev/null && pwd || true)"
SRC="$SELF_DIR/skills/elektrik"

# Чистая установка: файлы, удалённые из репо, не должны остаться от прошлой версии
rm -rf "$DEST"
mkdir -p "$DEST/references"
for f in $FILES; do
  if [ -f "$SRC/$f" ]; then
    cp "$SRC/$f" "$DEST/$f"
  else
    curl -fsSL "$RAW/skills/elektrik/$f" -o "$DEST/$f"
  fi
done

echo "Скилл elektrik установлен в $DEST."
echo "Перезапусти codex и вызови: \$elektrik ultra"
