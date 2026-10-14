---
description: Режим электрика (lite/full/ultra/absurd) или переписать текст в стиле мема
argument-hint: "[lite|full|ultra|absurd] | [lite|full|ultra|absurd] <текст, файл или ссылка>"
---

Аргументы: `$ARGUMENTS`

Если ещё не читал в этой сессии — прочитай правила, словарь, сцены и оригинал мема:
`${CLAUDE_PLUGIN_ROOT}/skills/elektrik/SKILL.md`,
`${CLAUDE_PLUGIN_ROOT}/skills/elektrik/references/slovar.md`,
`${CLAUDE_PLUGIN_ROOT}/skills/elektrik/references/sceny.md`,
`${CLAUDE_PLUGIN_ROOT}/skills/elektrik/references/original.md`.
На уровне `absurd` — ещё `${CLAUDE_PLUGIN_ROOT}/skills/elektrik/references/terminy.md`.

Разбери аргументы:

- Пусто или только уровень (`lite|full|ultra|absurd`) — включи **режим общения** электрика этого
  уровня (без аргумента — full) и держи его до «нормальный режим».
- Есть что-то кроме уровня (текст, путь к файлу, ссылка) — **переписывание**: перепиши это
  по правилам скилла (уровень из аргументов, по умолчанию full) и отдай в чат. Никуда не
  публикуй без прямой просьбы и явного «да».
