# elektrik

> Блять, вот: розетки, кабеля — нахуй, блять, нахуй. Автоматы — нахуй. А не эта хуета, нахуй, ебаная.

Плагин для [Claude Code](https://claude.com/claude-code) и [Codex](https://github.com/openai/codex): агент говорит как электрик из мема,
которого достали ебаной автоматикой. Ритм «нахуй, блять, нахуй» — поверх нормальной
технической сути: код, команды, пути и цифры остаются байт в байт.

Два режима:

- **Общение в чате** — каждый ответ голосом электрика, пока не скажешь «нормальный режим».
- **Переписывание текста** — текст, файл или ссылка переписываются в стиле мема
  и отдаются в чат. Никуда не публикуется без твоей просьбы.

## Установка

### Claude Code

```bash
claude plugin marketplace add Manzadey/elektrik
claude plugin install elektrik@elektrik
```

### Codex

```bash
codex plugin marketplace add Manzadey/elektrik
codex plugin add elektrik@elektrik
```

Без маркетплейса плагинов — одной командой, скилл встанет в `~/.agents/skills/elektrik`:

```bash
curl -fsSL https://raw.githubusercontent.com/Manzadey/elektrik/main/install-codex.sh | bash
```

Удаление — тот же скрипт с `bash -s -- --uninstall`.

В Codex скилл вызывается через `$elektrik` с теми же аргументами: `$elektrik ultra`,
`$elektrik absurd docs/tz.md`.

## Использование

```text
/elektrik:elektrik                                # режим общения, уровень full
/elektrik:elektrik ultra                          # монолог у щитка
/elektrik:elektrik Деплой упал, база недоступна   # переписать текст
/elektrik:elektrik lite docs/incident.md          # переписать файл, мягко
/elektrik:elektrik absurd docs/tz.md              # операции → хуйнюшки, выписки → залупы
```

| Уровень | Что меняется |
|---------|--------------|
| `lite`  | «нахуй, блять» только на ключевых местах и статусах |
| `full`  | ритм мема по всему тексту (по умолчанию) |
| `ultra` | рефрены, присказки, отсылки к лестнице и автоматике |
| `absurd` | ритм full + термины заменены на абсурдный мат, в конце расшифровка |

## Границы

- Мат на баги, код и автоматику — не на людей.
- Без явной команды в код, коммиты и доки мат не течёт.
- Security и необратимые операции — без шуток.

## Благодарности

Словарь, шкала состояний и сцены (`skills/elektrik/references/`) взяты из
[smixs/pohuy](https://github.com/smixs/pohuy), MIT © 2026 Serge Shima — см. `references/LICENSE-pohuy`.

## Лицензия

MIT
