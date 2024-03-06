source "${ZDOTDIR}"/plugins.zsh # get github_plugins

# Uninstall unused Github plugins
for filename in $(ls ${ZDOTDIR}/plugins); do
  plugin=$(echo ${filename::-1} | tr "@" "/")

  if [[ ! " $github_plugins " =~ " $plugin " ]]; then
    echo "\033[0;31mRemoving \033[1;31m'${plugin}'\033[0;31m...\033[0m"
    rm -rf ${ZDOTDIR}/plugins/$filename
    echo "  \033[0;31m..done\033[0m"
  fi
done

unset filename
unset plugin

# Install Github Plugins

for plugin in $github_plugins; do
  filename=$(echo $plugin | tr "/" "@")
  # clone the plugin from github if it doesn't exist
  if [[ ! -d ${ZDOTDIR}/plugins/$filename ]]; then
    echo "\033[0;32mCloning \033[1;32m'${plugin}'\033[0;32m...\033[0m"
    git clone --quiet --depth 1 --recursive https://github.com/$plugin.git ${ZDOTDIR}/plugins/$filename
    echo "  \033[0;32m..done\033[0m"
  fi
  # load the plugin
  for initscript in ${plugin#*/}.plugin.zsh ${plugin#*/}.zsh ${plugin#*/}.sh ${plugin#*/}.zsh-theme; do
    if [[ -f ${ZDOTDIR}/plugins/$filename/$initscript ]]; then
      source ${ZDOTDIR}/plugins/$filename/$initscript
      break
    fi
  done
done

unset github_plugins
unset plugin
unset filename
unset initscript

# Update Github Plugins

# command to update all plugins
alias plugpull="find ${ZDOTDIR}/plugins -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull"


# Install Cargo Plugins

for plugin in $cargo_plugins; do
  # install the plugin from cargo if it doesn't exist
  if ! command -v $plugin &> /dev/null; then
    echo "\033[0;32mInstalling \033[1;32m'${plugin}'\033[0;32m...\033[0m"
    cargo install $plugin
    echo "  \033[0;32m..done\033[0m"
  fi
done