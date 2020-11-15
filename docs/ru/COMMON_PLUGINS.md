# Основные полезные плагины

## Плагины не зависящие от OС и задач

В данном списке плагины для `zsh`, которые работают вне зависимости от операционной системы и, в целом, бывают полезны вне зависимости от ваших задач и потребностей.

* [alias-finder](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/alias-finder) – ищет доступные алиасы и подсказывает, когда команду можно выполнить более коротким и простым способом.
* [common-aliases](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/common-aliases) – набор алиасов для повседневных нужд. `la` вместо `ls -lAFh` и подобное.
* [docker](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker) – все параметры и дополнительные параметры параметров `docker-cli` трудно запомнить, а вызывать на каждом уровне вложенности опций `--help` не очень приятно. С этим плагином можно просто использовать Tab на каждом уровне, выбирая опцию стрелками навигации на клавиатуре и при этом видеть описание того, что она делает.
* [dotenv](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dotenv) – позволяет хранить конфигурации в `.env` файлах. Если указать в `.zshrc` не полный путь до файла, а всего лишь маску имени, то вы можете использовать его, чтобы меняя рабочую директорию менять и системные переменные. Это позволит, например, вызывать разные разные контексты K8s, в зависимости от того, с каким проектом вы сейчас работаете.
* [extract](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/extract) – позволяет просто вызывать команду `extract` и передавать ей путь до архива, а команда дальше сама поймет, какой это тип архива и чем его можно распаковать, если, конечно, для этого есть соответствующая утилита в ОС. Если утилиты нет, то `extract` сообщит, что необходимо установить.
* [history](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/history) – несколько удобных симлинков для `history`.
* [jsontools](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/jsontools) – добавляет команды для облегчения работы с JSON.
* [nmap](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/nmap) – позволяет не заучивать ключи `nmap`, достаточно написать что требуется. Например, `nmap_open_ports` позволит найти все открытые порты на целевом хосте.
* [pip](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/pip) – давно известно, что `pip`, как и сам `python`, делался не для людей, а для голландцев. С этим плагином можно, хотя бы, закешировать имена пакетов и использовать автозавершение при работе с установкой/удалением пакетов.
* [rsync](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/rsync) – добавление этого плагина позволит писать `rsync-synchronize` вместо `rsync -avzu --delete --progress -h`, а также очеловечет много других команд при работе с `rsync`.
* [sudo](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo) – если вы регулярно забываете написать `sudo`, то этот плагин для вас. С ним достаточно два раза подряд нажать `Esc` и `sudo` само добавится в начало строки.
* [systemadmin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/systemadmin) – набор алиасов для системного адимнистратора. С ним можно отобразить топ-10 процессов потребляющих больше всего ресурсов CPU через `pscpu10` вместо `ps -e -o pcpu,cpu,nice,state,cputime,args |sort -k1 -nr | head -10` и много другого.
* [tmuxinator](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmuxinator) – алиасы и автозавершение для `tmux`. Крайне рекомендуется, если до сих пор сидите на `screen`, потому что не хотите учить ключи `tmux`.
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) – автозавершение комманд по мере набора их в строке.
* [zsh-completions](https://github.com/zsh-users/zsh-completions) – аналог `bash-completions`, но для `zsh`.
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) – подсветка команд по мере набора, поэтому сразу видно насколько у введенной команды корректный синтаксис.

## Плагины полезные на macOS

В этом списке указаны плагины `zsh`, которые написаны под особенности macOS и/или могут быть полезны в задачах выполняемых на наших рабочих машинах.

* [brew](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/brew) – алиасы для самых длинных и популярных вызовов `brew`.
* [gnu-utils](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/gnu-utils) – по-умолчанию на macOS BSD версии пакетов и у них отличаются опции и ключи запуска. Поэтому для использования стандартных GNU/Linux версий данных пакетов их необходимо установить на macOS через `brew`. Но есть нюанс. Такие утилиты придется вызывать в консоли через `ggrep`, `gsed` и `gnano`. С этим плагином их можно вызывать используя стандартные имена данных утилит, без `g`.

## Плагины полезные на рабочей станции, вне зависимости от ОС

* [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git) – алиасы для `git` и его команд. Например, `ga . && gcmsg "tiny fix" && ggpush` теперь всё, что нужно, чтобы отправить изменения на ремоут.
* [git-auto-fetch](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git-auto-fetch) – позволяет задать интервал и делать `git fetch` для всех ваших репозиториев автоматически.
* [git-escape-magic](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git-escape-magic) – позволяет не экранировать спецсимволы в `commit message`, т.к. плагин делает это за вас.
* [gitignore](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/gitignore) – Выполнении команды, например, `gi ansible >> .gitignore` позволяет получить файл `.gitignore` для Ansible Role прямиком с [gitignore.io](https://gitignore.io). На сайте доступно множество языков, инструментов и ОС.
* [vscode](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vscode) – алиасы для работы с CLI утилитой Visual Studio Code, известной как `code`.

## Плагины полезные на серверах

В этом списке указаны плагины, которые будут полезны, в первую очередь, на  серверах.

* [debian](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/debian) – алиасы для работы с `apt-get`.
* [screen](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/screen) – показывает имя и статус сессии открытой в мультиплексере `screen`.
* [systemd](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/systemd) – алиасы для работы с `systemd`. Например `sc-reload nginx` делает тоже самое что и `sudo systemctl reload nginx.service`
