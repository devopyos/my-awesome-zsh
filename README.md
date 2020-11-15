# My Awesome ZSH

## Базовая информация

### Установка ZSH

> **NOTICE!**  
Более подробно об установке `zsh` в разные ОС можно прочитать в [**ZSH_INSTALL.md**](docs/ru/ZSH_INSTALL.md)

Для начала надо установить `zsh`. В macOS это делается довольно просто, в пару шагов, с помощью `brew` (которым можно пользоваться и на GNU/Linux).

Устанавливаем [**Homebrew**](https://brew.sh), если он ещё не установлен:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Теперь мы можем установить и сам `zsh`:

```bash
brew install zsh
```

> **NOTICE!**  
В macOS, начиная с macOS Catalina, zsh уже является командой оболочкой по-умолчанию. Более подробно об этом можно прочитать на [**соответствующей странице портала поддержки Apple**](https://support.apple.com/en-us/HT208050). Если по какой-то причине у вас по-прежнему используется bash, то вы можете переключиться на использование zsh, как командной оболочки по-умолчанию с помощью команды `chsh -s /bin/zsh`. Установка zsh из brew по-прежнему является работающей и рекомендуемой опцией, так как гарантирует более свежие версии zsh, потому что не зависит от каналов обновления Apple.

### Установка OH-MY-ZSH

> **NOTICE!**  
Более подробно об установке oh-my-zsh можно прочитать в [**OHMYZSH_INSTALL.md**](docs/ru/OHMYZSH_INSTALL.md)

Установка oh-my-zsh выполняется одной командой и не требует от вас ничего, кроме наличия в системе `curl` и `git`:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

В ходе установки соглашаемся сделать `zsh` облочкой по-умолчанию, если это не было сделано до этого, и вводим пароль пользователя.  

## Использование репозитория

### Структура репозитория

```bash
./my-awesome-zsh
├── README.md           ### Общее описание проекта
├── docs                ### Документация
│   ├── ru              ### Русскоязычная документация проекта
│   │   └── *.md        ### Makrdown файлы документации на русском языке
│   └── en              ### Англоязычная документация проекта
│       └── *.md        ### Makrdown файлы документации на английском языке
└── zsh_configs         ### Директория, где расположены конфигураций
    └── ${os_family}    ### Уровень разделения по ОС. Конфиги могут отличаться под ОС
        └── ${username} ### Имя пользователя предлагающего свой конфиг для этой ОС
            ├── .zshrc  ### Файл конфигурации zsh
            └── .zshenv ### Файл содержащий значения системных переменных
```

### Использование конфигураций описанных в репозитории

Берём любым удобным способом необходимый файл `.zshrc` из данного репозитория и идущий к нему в пару `.env` файл (находятся в одной директории), обычно именуемый `.zshenv` – там объявлены все переменные для работы оболочки и плагинов, чтобы не захломлять файл конфигурации. Файлы должны быть расположены в домашней директории пользователя, чтобы `zsh` их прочитал. Файл в домашнем каталоге может быть и симлинком, если вы хотите быстро и безболезненно проверить все доступные варианты.

Если коротко и c примером, то вот **TL;DR** версия.

в macOS `.zshrc` и его `.env` файл должны быть расположены так:  

```bash
/Users/${whoami}/.zshrc
/Users/${whoami}/.zshenv
```

А в GNU/Linux так:

```bash
/home/${whoami}/.zshrc
/home/${whoami}/.zshenv
```

## ZSH Plugins & Themes

### ZSH plugins

> **NOTICE!**  
Более подробно о рекомендуемых плагинах для `zsh` можно прочитать в [**COMMON_PLUGINS.md**](docs/ru/COMMON_PLUGINS.md)

#### Oh-my-zsh plugins

Плагины входящие в поставку фреймворка. Больниство плагинов не имеют завистимостей и, в худшем случае, просто не будет автозавершения и подсказок, так как утилита, для которой плагин был написан, не установлена в системе. Части из них, той части, которая напрямую определяет поведение zsh (например подсветка синтаксиса) зависимости могут понадобиться.

[**Плагины входящие во фреймфорк oh-my-zsh**](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins) располагаются в директории `~/.oh-my-zsh/plugins/` и их достаточно просто включить, указав в списке активных через изменение `.zshrc` . Это выглядит, примерно, так:

```bash
plugins=(
    git
    ansible
)
```

#### Custom plugins

Не все популярные и полезные плагины входят в поставку oh-my-zsh и их придеться устанавливать отдельно. Большинство из них описывают все шаги установки в своей документации, но, обычно, это сводится всего к 2-м шагам.

**Первый шаг:** клонирование репозитория плагина в директорию `~/.oh-my-zsh/custom/plugins`, что делает его доступным для вызова фреймворком.

**Второй шаг:** тривиальное включение плагина по имени через список активных плагинов в `.zshrc`

К полезным плагинам, подключаемых таким образом, сразу стоит отнести следующие:

* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

* [zsh-completions](https://github.com/zsh-users/zsh-completions)

* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

### ZSH Themes

>**NOTICE!**  
 Для подавлюящего большинства тем, входящих в oh-my-zsh, в [**соответствующем разделе документации фреймворка**](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes) есть скриншоты и описания.

Темы  входящие в поставку фреймворка расположены в директории `~/.oh-my-zsh/themes/` и устанавливаются через переменную `ZSH_THEME`, которая, согласно структуре предложенной данным репозиторием, задается в `.zshenv`, но может быть описана и в самом `.zshrc`.

Большинство тем не имеют зависимостей и работают из коробки, но у некоторых из тем могут быть проблемы с отображением спецсимволов, так как в вашей ОС может не быть соответствующих шрифтов. Большинство таких проблем решают следующие комплекты шрифтов:

* [Powerline Fonts](https://github.com/powerline/fonts)

* [Fira Code](https://github.com/tonsky/FiraCode)

## Траблшутинг

Необходимо понимать, что в `.zshrc` перечислены плагины, но, некоторым из них, необходимы зависимости и, если они не удовлетворены, при открытии нового `tty` вы увидете соответствующее сообщение.

Всю информацию о зависимостях можно получить на станице нужного плагина в [**репозитории oh-my-zsh на GitHub**](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins). Так, например, плагин `colorize` требует наличие в системе [pygments](https://pygments.org/download/) или [chroma](https://github.com/alecthomas/chroma).

Ожидаемо, если плагин не из репозитория сообщества oh-my-zsh и установлен в директорию `~/.oh-my-zsh/custom/plugins`, то следует читать его документацию и Issue на GitHub.