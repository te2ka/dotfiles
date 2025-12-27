# dotfiles

## Setting up

1. Clone this repository

   ```shell
   git clone git@github.com:te2ka/dotfiles.git $HOME/.config
   ```

2. Add the following to /etc/zshenv

   ```shell
   export ZDOTDIR="$HOME"/.config/zsh
   ```

3. Execute the following command

   ```shell
   ./setup.sh
   ```
