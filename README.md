# Neovim Конфигурация: Плагины и Горячие Клавиши

## Общая Информация

- **Расположение конфигурации**: `~/.config/nvim`
- **Плагин менеджер**: `lazy.nvim`
- **Тема по умолчанию**: `catppuccin-macchiato`

---

## Горячие Клавиши (Keymaps)

### Общие настройки
- `<leader>` = пробел (space)
- `<leader><leader>` = перезагрузка конфигурации (`:so`)

### Навигация по буферу
| Клавиша | Описание |
|---------|----------|
| `J` | Объединение строк с сохранением позиции курсора |
| `K` | Объединение строк с сохранением позиции курсора |
| `<C-d>` | Прокрутка вниз с центрированием курсора |
| `<C-u>` | Прокрутка вверх с центрированием курсора |
| `n` | Поиск вперед с центрированием курсора |
| `N` | Поиск назад с центрированием курсора |

### Работа с выделением (Visual Mode)
| Клавиша | Описание |
|---------|----------|
| `J` | Перемещение выделенных строк вниз |
| `K` | Перемещение выделенных строк вверх |
| `<` | Отступ влево |
| `>` | Отступ вправо |
| `p` | Вставка без потери скопированного текста |

### Редактирование
| Клавиша | Описание |
|---------|----------|
| `<leader>d` | Удаление без сохранения в буфер обмена |
| `<C-c>` (в i) | Выход в Normal mode |
| `<C-c>` (в n) | Очистка подсветки поиска |
| `x` | Удаление символа без сохранения в буфер |
| `<leader>s` | Глобальная замена слова под курсором |
| `<leader>X` | Сделать файл исполняемым |

### Работа с вкладками (Tabs)
| Клавиша | Описание |
|---------|----------|
| `<leader>to` | Открыть новую вкладку |
| `<leader>tx` | Закрыть текущую вкладку |
| `<leader>tn` | Перейти к следующей вкладке |
| `<leader>tp` | Перейти к предыдущей вкладке |
| `<leader>tf` | Открыть текущий файл в новой вкладке |

### Работа с окнами (Splits)
| Клавиша | Описание |
|---------|----------|
| `<leader>sv` | Вертикальный сплит |
| `<leader>sh` | Горизонтальный сплит |
| `<leader>se` | Одинаковый размер сплитов |
| `<leader>sx` | Закрыть текущий сплит |
| `<leader>mx` | Максимизация/минимизация сплита |

### Путь к файлу
| Клавиша | Описание |
|---------|----------|
| `<leader>fp` | Скопировать путь к файлу в буфер обмена |

### Перезапуск
| Клавиша | Описание |
|---------|----------|
| `<leader>re` | Перезапуск Neovim |
| `<leader>lr` | Перезапуск LSP |

### Форматирование
| Клавиша | Описание |
|---------|----------|
| `<leader>f` | Форматирование через LSP |
| `<leader>mp` | Форматирование всего файла или диапазона |

### Emmet
| Клавиша | Описание |
|---------|----------|
| `<leader>xe` | Обернуть текст в аббревиатуру Emmet |

### Дополнительные LSP горячие клавиши (доступны при подключении LSP)
| Клавиша | Описание |
|---------|----------|
| `gd` | Перейти к определению |
| `gD` | Перейти к объявлению |
| `gi` | Перейти к реализации |
| `gt` | Перейти к определению типа |
| `gR` | Показать ссылки на символ |
| `<leader>vca` | Доступные код-экшены |
| `<leader>rn` | Переименовать символ |
| `<leader>D` | Показать диагностику буфера |
| `df` | Показать диагностику текущей строки |
| `K` | Показать документацию |
| `<C-h>` (в i) | Показать подсказку сигнатуры |

---

## Установленные Плагины

### Основные зависимости
| Плагин | Назначение |
|--------|------------|
| `nvim-lua/plenary.nvim` | Библиотека для множества плагинов |
| `christoomey/vim-tmux-navigator` | Навигация между tmux и split окнами |

### Утилиты и разработка
| Плагин | Назначение |
|--------|------------|
| `folke/lazydev.nvim` | Разработка и документирование плагинов LazyVim |
| `echasnovski/mini.nvim` | Набор мини-плагинов |

### Файловый менеджер
| Плагин | Назначение | Горячие клавиши |
|--------|------------|-----------------|
| `nvim-tree/nvim-tree.lua` | Дерево файлов (отключен по умолчанию) | `<leader>ex`, `<leader>eX`, `<leader>ec`, `<leader>er` |
| `echasnovski/mini.files` | Файловый менеджер | `<leader>ee`, `<leader>ef` |
| `stevearc/oil.nvim` | Основной файловый менеджер (открыт при запуске) | `-`, `<leader>-` |
| `folke/snacks.nvim` | Explorer через Snacks | `<leader>es` |

### Управление проектами
| Плагин | Назначение | Горячие клавиши |
|--------|------------|-----------------|
| `thePrimeagen/harpoon` | Управление файлами | `<leader>a`, `<C-e>`, `<C-y>`, `<C-i>`, `<C-n>`, `<C-s>`, `<C-S-P>`, `<C-S-N>` |
| `ThePrimeagen/git-worktree.nvim` | Управление git worktree | `<leader>wl`, `<leader>wc` |

### Git инструменты
| Плагин | Назначение | Горячие клавиши |
|--------|------------|-----------------|
| `tpope/vim-fugitive` | Git в Neovim | `<leader>gg`, `<leader>P`, `<leader>p`, `<leader>t` |
| `lewis6991/gitsigns.nvim` | Git signs и действия | `]h`, `[h`, `<leader>gs`, `<leader>gr`, `<leader>gS`, `<leader>gR`, `<leader>gu`, `<leader>gp`, `<leader>gbl`, `<leader>gB`, `<leader>gd`, `<leader>gD` |
| `kdheepak/lazygit.nvim` | Lazygit (отключен) | `<leader>lg` |
| `folke/snacks.nvim` | Lazygit через snacks | `<leader>lg`, `<leader>gl` |

### Форматирование и линтинг
| Плагин | Назначение | Горячие клавиши |
|--------|------------|-----------------|
| `stevearc/conform.nvim` | Форматирование | `<leader>mp` |
| `mfussenegger/nvim-lint` | Линтинг | `<leader>l` |

### LSP (Language Server Protocol)
| Плагин | Назначение |
|--------|------------|
| `neovim/nvim-lspconfig` | Конфигурация LSP |
| `mason-org/mason.nvim` | Установка LSP серверов и инструментов |
| `mason-org/mason-lspconfig.nvim` | Интеграция Mason с LSP |
| `WhoIsSethDaniel/mason-tool-installer.nvim` | Установка инструментов через Mason |
| `antosha417/nvim-lsp-file-operations` | Операции с файлами через LSP |

**Установленные LSP серверы:**
- `lua_ls` (Lua)
- `cssls` (CSS/SCSS/LESS)
- `emmet_language_server`, `emmet_ls` (HTML/CSS/JSX/TSX)
- `ts_ls` (JavaScript/TypeScript)
- `gopls` (Go)
- `rust_analyzer` (Rust)
- `astro` (Astro)
- `tailwindcss` (Tailwind CSS)
- `marksman` (Markdown)
- `angularls` (Angular)

**Установленные инструменты форматирования/линтинга:**
- `biome`, `prettier`, `stylua`, `isort`, `pylint`, `clangd`, `denols`

### Комpletions (Авто-дополнение)
| Плагин | Назначение |
|--------|------------|
| `saghen/blink.cmp` | Современный completion engine |
| `L3MON4D3/LuaSnip` | Snippets engine |
| `rafamadriz/friendly-snippets` | Предустановленные сниппеты |
| `nvim-treesitter/nvim-treesitter` | Парсер для контекста |

### Подсветка синтаксиса и структуры
| Плагин | Назначение |
|--------|------------|
| `nvim-treesitter/nvim-treesitter` | Парсер и подсветка синтаксиса |
| `windwp/nvim-ts-autotag` | Авто-закрытие тегов |
| `nvim-treesitter/nvim-treesitter` | Установленные языки: json, javascript, typescript, tsx, go, yaml, html, css, python, http, prisma, markdown, svelte, graphql, bash, lua, vim, dockerfile, gitignore, query, vimdoc, c, cpp, java, rust, ron, asm |

### Темы (Colorschemes)
| Плагин | Назначение |
|--------|------------|
| `catppuccin/nvim` | Тема catppuccin (включена по умолчанию) |
| `rose-pine/neovim` | Тема rose-pine |
| `ellisonleao/gruvbox.nvim` | Тема gruvbox |
| `rebelot/kanagawa.nvim` | Тема kanagawa |
| `craftzdog/solarized-osaka.nvim` | Тема solarized-osaka |
| `folke/tokyonight.nvim` | Тема tokyonight |
| `loctvl842/monokai-pro.nvim` | Тема monokai-pro |

### UI улучшения
| Плагин | Назначение | Горячие клавиши |
|--------|------------|-----------------|
| `nvim-lualine/lualine.nvim` | Строка состояния | - |
| `nvim-tree/nvim-web-devicons` | Иконки файлов | - |
| `nvim-ufo` | Фолдинг (сворачивание кода) | `zR`, `zM` |
| `folke/trouble.nvim` | Список диагностик и задач | `<leader>xw`, `<leader>xd`, `<leader>xq`, `<leader>xl`, `<leader>xt` |
| `mbbill/undotree` | История изменений | `<leader>u` |
| `szw/vim-maximizer` | Максимизация сплитов | `<leader>mx` |
| `nvzone/showkeys` | Показ горячих клавиш | `<leader>ks` |

### Комментирование кода
| Плагин | Назначение | Горячие клавиши |
|--------|------------|-----------------|
| `numToStr/Comment.nvim` | Комментирование кода | `gc`, `gb`, `gcc`, `gbc` |
| `JoosepAlviste/nvim-ts-context-commentstring` | Контекстное комментирование через Treesitter | - |

### Работа с текстом
| Плагин | Назначение | Горячие клавиши |
|--------|------------|-----------------|
| `windwp/nvim-autopairs` | Авто-пары скобок | - |
| `echasnovski/mini.surround` | Работа с окружающими символами | `sa`, `ds`, `sf`, `sF`, `sh`, `ca`, `sn` |
| `echasnovski/mini.splitjoin` | Разделение/объединение аргументов | `sj`, `sk` |
| `echasnovski/mini.trailspace` | Удаление лишних пробелов | `<leader>cw` |

### Поведение при вставке
| Плагин | Назначение |
|--------|------------|
| `echasnovski/mini.notify` | Уведомления (minimized style) |
| `folke/snacks.nvim` | Input и quickfile модули |

### Отображение Markdown
| Плагин | Назначение |
|--------|------------|
| `MeanderingProgrammer/render-markdown.nvim` | Визуализация Markdown файлов |
| `nvim-treesitter/nvim-treesitter` | Treesitter для Markdown |

### Java Development 🐍
| Компонент | Версия | Описание |
|-----------|--------|----------|
| **jdtls** | 1.54.0 | Java Language Server |
| **lombok** | 1.18.46 | Поддержка Lombok аннотаций |
| **java-test** | 0.43.2 | Тестирование Java кода |
| **java-debug** | 0.58.3 | DAP отладчик |
| **spring-boot-tools** | 1.55.1 | Поддержка Spring Boot |
| **JDK** | 25 | Java Development Kit |

**Доступные команды:**
| Команда | Описание |
|---------|----------|
| `:JavaSettingsChangeRuntime` | Смена Java runtime |
| `:JavaRunnerRunMain` | Запуск main класса |
| `:JavaRunnerStopMain` | Остановка приложения |
| `:JavaTestRunCurrentClass` | Запуск тестов класса |
| `:JavaTestDebugCurrentClass` | Отладка тестов |
| `:JavaTestRunAllTests` | Запуск всех тестов |
| `:JavaDapConfig` | Настройка DAP |

**Доп. горячие клавиши:**
- `gd` — определение, `gD` — объявление, `gi` — реализация
- `K` — документация (hover)
- `<leader>rn` — переименовать символ
- `<leader>D` — диагностика буфера

**Подробнее:** [README-JAVA.md](./README-JAVA.md)

### Работа с комментариями TODO
| Плагин | Назначение | Горячие клавиши |
|--------|------------|-----------------|
| `folke/todo-comments.nvim` | Поиск и навигация по TODO | `]t`, `[t` |
| `folke/snacks.nvim` | TODO через snacks picker | `<leader>pt`, `<leader>pT` |

### Навигация и поиск
| Плагин | Назначение | Горячие клавиши |
|--------|------------|-----------------|
| `nvim-telescope/telescope.nvim` | Поиск и навигация | `<leader>pr`, `<leader>pWs`, `<leader>ths` |
| `nvim-telescope/telescope-fzf-native.nvim` | FZF нативный поиск для Telescope | - |
| `andrew-george/telescope-themes` | Темы для Telescope | - |
| `nvim-telescope/telescope-themes` | Работа с темами | - |
| `folke/snacks.nvim` | Snacks Picker | `<leader>pf`, `<leader>pc`, `<leader>ps`, `<leader>pws`, `<leader>pk`, `<leader>gbr`, `<leader>th`, `<leader>vh` |

### Просмотр определений (Goto Preview)
| Плагин | Назначение | Горячие клавиши |
|--------|------------|-----------------|
| `rmagatti/goto-preview.nvim` | Просмотр определений/реализаций в плавающем окне | `gpd`, `gpi`, `gpD`, `gpt`, `gpr`, `gpc`, `gps` |

### Остальные утилиты
| Плагин | Назначение |
|--------|------------|
| `olrtg/nvim-emmet` | Emmet для HTML/CSS |
| `NvChad/nvim-colorizer.lua` | Подсветка цветов (HEX, RGB, Tailwind) |

### Утилиты Snacks (дополнительно)
| Горячие клавиши | Описание |
|-----------------|----------|
| `<leader>es` | Открыть Snacks Explorer |
| `<leader>rN` | Быстрое переименование файла |
| `<leader>dB` | Удалить буфер (с подтверждением) |
| `<leader>gbr` | Выбор и переключение git ветки |

### Терминалы
| Плагин | Назначение | Горячие клавиши |
|--------|------------|-----------------|
| `akinsho/toggleterm.nvim` | Переключение терминалов (float и горизонтальный) | `<leader>tf`, `<leader>th`, `<Esc><Esc>` |

---

## Инструменты и настройки

### Treesitter
- **Допустимые языки**: json, javascript, typescript, tsx, go, yaml, html, css, python, http, prisma, markdown, markdown_inline, svelte, graphql, bash, lua, vim, dockerfile, gitignore, query, vimdoc, c, cpp, java, rust, ron, asm
- **Возможности**: подсветка синтаксиса, отступы, incremental selection (`<C-space>`)

### Комментирование
- **Основные клавиши**: `gc`, `gb`, `gcc`, `gbc`
- **Контекстное комментирование** через Treesitter

### Colorizer
- **Поддерживаемые форматы**: HEX, RGB, RGBA, RRGGBBAA, CSS, Tailwind
- **Поддерживаемые файлы**: html, css, javascript, typescript, javascriptreact, typescriptreact, vue, svelte, astro, toml

### Форматирование (Conform)
- **JavaScript/TypeScript**: biome-check
- **CSS/HTML/Svelte**: prettier
- **JSON**: biome-check
- **YAML/GraphQL/Liquid**: prettier
- **Lua**: stylua
- **Markdown**: mdformat, markdownlint-cli2, markdown-toc

### Git интеграция
- **vim-fugitive**: `<leader>gg` - открыть git в полном экране
- **gitsigns**: навигация по ханкам, stage/reset, blame
- **Lazygit**: через snacks

### Терминалы (ToggleTerm)
- **Float терминал** (`<leader>tf`): всплывающее окно терминала (ID 1), занимает 75% ширины и высоты экрана
- **Горизонтальный терминал** (`<leader>th`): терминал внизу экрана высотой 15 строк (ID 2)
- **Закрытие** (`<Esc><Esc>` в режиме терминала): выход из терминала в Normal mode
- **Сохранение режима** (`persist_mode = true`): терминал запоминает текущий режим при переключении

---

## Легенда

- **n** - Normal mode
- **v** - Visual mode
- **i** - Insert mode
- **x** - Visual mode (для текстовых объектов)
- **<C-*>** - Ctrl + *
- **<M-*>** - Meta/Alt + *
- **<leader>** - пробел (space)
- **<CR>** - Enter
- **<BS>** - Backspace

---

*Последнее обновление: 2026-08-29*
