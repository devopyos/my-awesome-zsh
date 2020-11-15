# Установка OH-MY-ZSH

## Требования

Для установки oh-my-zsh необходимы установленные в системе `curl` или `wget` и `git`.

## Установка

### Автоматическая установка

Oh-my-zsh может быть установлен тремя способами.

Первый способ, это установка через `curl`:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Второй способ, это установка через `wget`:

```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Третий способ, это установка через `fetch`:

```bash
sh -c "$(fetch -o - https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Ручная установка

Клонируем репозиторий [**oh-my-zsh c GitHub**](https://github.com/ohmyzsh/ohmyzsh) в домашнюю директорию:

```bash
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
```

Затем, используя файл шаблона, создаем в домашнем каталоге файл `.zshrc`:

```bash
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
```

После чего, если не сделали этого ранее, меняем облочку по-умолчанию на `zsh`:

```bash
chsh -s $(which zsh)
```

### Траблшутинг

Oh-my-zsh очень зависит от того, что указано у вас в `PATH` и от системных переменных в принципе. Используйте это как отправную точку в поиске решения проблем. Вся информация по фреймворку доступна в [**Wiki репозитория на GitHub**](https://github.com/ohmyzsh/ohmyzsh/wiki). Если вы не найдете описания проблемы и/или её решения в документации, то следует переключиться на поиск по созданным в проекте Issue.
