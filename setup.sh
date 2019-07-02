#/bin/sh

set -euo pipefail

show_help() {
   cat <<-HELP
Setup script for vim configs

USAGE: ${0} [command]

commands:
   init   - Initialize the system to the expected local state
   update - Update the system against the latest in the synced remote
   link   - Symlink the configs to the correct place
HELP
}

####################################################################################
# Helpers {{{
linkIfNot() {
   [[ -e $2 ]] && return

   if [[ ! -d "$(dirname $2)" ]]; then
      echo "Creating directory: $(dirname $2)"
      mkdir -p "$(dirname $2)"
   fi

   echo "Linking " $1
   ln -s $PWD/$1 $2
} # }}}
####################################################################################
# Actions {{{
link() {
   linkIfNot environment $HOME/.local/environment/vim
   linkIfNot "" $XDG_CONFIG_HOME/vim
}

install() {
   sudo pacman -Sy
   sudo pacman -S --needed vim
   sudo pacman -S --needed ripgrep
   touch plugin/local.vim
} # }}}
####################################################################################

case "${1:-''}" in
   'init')
      install
      link
      ;;
   'update')
      git pull
      install
      link
      ;;
   'link')
      link
      ;;
   *)
      show_help
      exit 1
      ;;
esac
