# demenik dotfiles

![preview](/preview.png)

## How to install

Clone this repo and run `./setup.zsh` to link all the files to your home directory.

```bash
git clone https://github.com/demenik/dotfiles.git .dotfiles
cd .dotfiles
./setup.zsh
```

After that, you need to restart using `zsh`.

## Plugin Manager

Define a list of github repos that you want to clone at `.dotfiles/zsh/plugins.zsh`.

The plugin Manager will automatically clone the repos and source the `plugin.zsh` file inside each one.

To update all plugins, use `plugpull` in zsh.

> Note: I will probably remove my own hacky plugin manager and use github and dependabot to manage the plugins in the future.
