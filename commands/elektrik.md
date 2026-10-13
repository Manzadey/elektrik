---
description: Режим электрика (lite/full/ultra) или переписать GitLab issue/MR в стиле мема
argument-hint: "[lite|full|ultra] | <issue/MR> [comment|description] [lite|full|ultra]"
allowed-tools: Bash(glab api:*), Bash(timeout 30 glab api:*), Write
---

Аргументы: `$ARGUMENTS`

Если ещё не читал в этой сессии — прочитай правила, словарь и сцены скилла:
`${CLAUDE_PLUGIN_ROOT}/skills/elektrik/SKILL.md`,
`${CLAUDE_PLUGIN_ROOT}/skills/elektrik/references/slovar.md`,
`${CLAUDE_PLUGIN_ROOT}/skills/elektrik/references/sceny.md`.

Разбери аргументы:

- Пусто или только уровень (`lite|full|ultra`) — включи **режим общения** электрика этого
  уровня (без аргумента — full) и держи его до «нормальный режим».
- Есть ссылка на GitLab или номер — **переписывание**: возьми issue/MR, перепиши по правилам
  скилла (уровень из аргументов, по умолчанию full), покажи черновик и опубликуй только после
  явного «да». Куда — `comment` (по умолчанию) или `description`.
