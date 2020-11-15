# Установка ZSH

## macOS

> **NOTICE!**  
В macOS, начиная с macOS Catalina, zsh уже является командой оболочкой по-умолчанию. Более подробно об этом можно прочитать на [**соответствующей странице портала поддержки Apple**](https://support.apple.com/en-us/HT208050). Если по какой-то причине у вас по-прежнему используется bash, то вы можете переключиться на использование zsh, как командной оболочки по-умолчанию с помощью команды `chsh -s /bin/zsh`. Установка zsh из brew по-прежнему является работающей и рекомендуемой опцией, так как гарантирует более свежие версии zsh, потому что не зависит от каналов обновления Apple.

Установка через Homebrew:

```bash
brew install zsh
```

Установка через MacPorts:

```bash
sudo port install zsh zsh-completions
```

## GNU/Linux

### Any distro

`zsh` устанавливается в одну команду на любой GNU/Linux дистрибутив через [**Linuxbrew**](https://docs.brew.sh/Homebrew-on-Linux).

### Deb-like

Установка в deb-like дистрибутивах выполняется в одну команду через `apt` или `apt-get`:

```bash
sudo apt-get install zsh
```

### RHEL family

#### RHEL/CentOS 7

Если используется RHEL/CentOS старше 8-го, то установка выполняется через `yum`:

```bash
sudo yum install zsh
```

#### RHEL/CentOS 8 + Fedora

Если используются свежие дистрибутивы семейства Red Hat, то установка делается через вызов `dnf`:

```bash
sudo dnf install zsh
```

### Arch Linux/Manjaro

Если вы используете Arch Linux или его дериватив, то установка выполняется через `pacman`:

```bash
sudo pacman -S zsh
```

### Other OS

Для FreeBSD и большинства не упомянутых выше дистрибутив GNU/Linux можно найти [**исчерпывающий гайд на английском языке в документации OH-MY-ZSH на GitHub**](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
