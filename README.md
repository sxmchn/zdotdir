# zdotdir

Мои `$ZDOTDIR` [dotfiles], содержащие конфигурацию ZSH.

## Мой терминал

![My Terminal][zdotdir_gif]

## Мой сетап

Мой сетап нацелен на минимализм и использует проверенные решения таких успешных проектов, как [antidote] и [starship].
Он по сути состоит из файла `.zshrc` в котором активируется менеджер плагинов [antidote] и [starship] shell prompt и директорий для конфигурационных файлов `conf.d` и кастомных функций `functions`.
Используя [antidote] подключаю плагины в основном проекта [zephyr] для реализации необходимых мне функций ZSH:

```
# .zsh_plugins.txt
# Делает терминальные штуки более цветными
mattmc3/zephyr path:plugins/color

# Подключает conf.d директорию для конфигурации
mattmc3/zephyr path:plugins/confd

# Устанавливает опции и алиасы связанные с структурой каталогов и файловой системы
mattmc3/zephyr path:plugins/directory

# Определяет дополнительные переменные окружения
mattmc3/zephyr path:plugins/environment

# Загрузка и инициализация встроенной в zsh системы управления историей
mattmc3/zephyr path:plugins/history

# Функциональность для пользователей macOS
mattmc3/zephyr path:plugins/macos

# Дополнительные утилиты для бесшовной кроссплатформенности
mattmc3/zephyr path:plugins/utility

# Подключение директории для функций
mattmc3/zephyr path:plugins/zfunctions

# Включение автодополнения и подсветки синтаксиса
zsh-users/zsh-syntax-highlighting
zsh-users/zsh-autosuggestions
zsh-users/zsh-history-substring-search
```

## Установка

Установка может быть выполнена в следующем порядке.
Хорошей идеей будет вначале забэкапить файлы существующей конфигурации:

```zsh
setopt extended_glob
zfiles=(
  ${ZDOTDIR:-~}/.zsh*(.N)
  ${ZDOTDIR:-~}/.zlog*(.N)
  ${ZDOTDIR:-~}/.zprofile(.N)
)
mkdir -p ~/.bak
for zfile in $zfiles; do
  cp $zfile ~/.bak
done
unset zfile zfiles
```

Установка конфигурации из этого репозитория в ваш `$ZDOTDIR`:

```zsh
# определяю ZDOTDIR переменную
export ZDOTDIR=~/.config/zsh

# клонирование в файлов в ZDOTDIR
git clone --recursive git@github.com:sxmchn/zdotdir.git $ZDOTDIR

# Перенос файла ~/.zshenv в $ZDOTDIR/.zshenv
cat << 'EOF' >| ~/.zshenv
export ZDOTDIR=~/.config/zsh
[[ -f $ZDOTDIR/.zshenv ]] && . $ZDOTDIR/.zshenv
EOF

# запус zsh
zsh
```

## Look-and-feel

### Fonts

Install [nerd fonts][nerd-fonts] via homebrew:

```zsh
brew tap homebrew/cask-fonts
brew install --cask font-meslo-lg-nerd-font
brew install --cask font-fira-code-nerd-font
brew install --cask font-hack-nerd-font
brew install --cask font-inconsolata-nerd-font
brew install --cask font-sauce-code-pro-nerd-font
```

### Color schemes

iTerm2 has some awesome [color schemes][iterm2-colors]. You can use them for more than
just iTerm2.

I use Space Gray:

<p align="center">
  <img alt="space gray" src="https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/screenshots/space_gray.png?raw=true"/>
</p>

## Resources

- [fish][fish]
- [antidote][antidote]
- [zephyr][zephyr]

[antidote]: https://github.com/mattmc3/antidote
[awesome-zsh-plugins]: https://github.com/unixorn/awesome-zsh-plugins
[fish]: https://fishshell.com
[dotfiles]: https://dotfiles.github.io/
[homebrew]: https://brew.sh
[iterm2-colors]: https://github.com/mbadolato/iTerm2-Color-Schemes
[nerd-fonts]: https://github.com/ryanoasis/nerd-fonts
[oh-my-zsh]: https://github.com/ohmyzsh/ohmyzsh
[prezto]: https://github.com/sorin-ionescu/prezto
[starship-toml]: https://github.com/mattmc3/zdotdir/blob/main/prompt/starship.toml
[starship]: https://starship.rs
[supercharge-zsh]: https://blog.callstack.io/supercharge-your-terminal-with-zsh-8b369d689770
[zdotdir_gif]: https://raw.githubusercontent.com/mattmc3/zdotdir/resources/img/zdotdir.gif
[zephyr]: https://github.com/zshzoo/zephyr
[zsh_unplugged]: https://github.com/mattmc3/zsh_unplugged
[zshzoo]: https://github.com/zshzoo/zshzoo
