#/bin/sh

####################################################################################
# Linking {{{
linkIfNot() {
   if [ -d $1 ]; then
      if [ ! -d $2 ]; then
         echo "Linking " $1
         ln -s $PWD/$1 $2
      fi
   elif [ ! -e $2 ]; then
      echo "Linking " $1
      ln -s $PWD/$1 $2
   fi
}

conv() {
   echo -n > $2
   while read line; do
      eval echo "$line" >> $2
   done < "$1"
}

echoIfNot() {
   if [ -d $1 ]; then
      if [ ! -d $2 ]; then
         echo "Converting ", $1
         conv $PWD/$1 $2
      fi
   else
      echo "Converting ", $1
      conv $PWD/$1 $2
   fi
}

link() {
   linkIfNot environment $HOME/.local/environment/vim
   linkIfNot "" $XDG_CONFIG_HOME/vim
} # }}}
####################################################################################
# Install - Arch {{{
aurGet() {
   local END_DIR=$PWD
   cd $HOME/.local/aur/
   ABBR=${1:0:2}
   wget http://aur.archlinux.org/packages/$ABBR/$1/$1.tar.gz
   tar -xf "$1.tar.gz"
   rm "$1.tar.gz"
   cd "$1"
   makepkg -si
   cd $END_DIR
}

run_pacman() {
   sudo pacman -Sy
   sudo pacman -S --needed vim
}

build_arch() {
   run_pacman
   touch plugin/local.vim
   git submodule init
   git submodule update
}

update_arch() {
   git pull
   git submodule init
   git submodule update
   git submodule -q foreach git pull -q origin master
   run_pacman
   link
} # }}}
####################################################################################
# Install - Ubuntu {{{
run_apt() {
   sudo apt-get update
   sudo apt-get upgrade

   sudo apt-get install vim
}

build_ubuntu() {
   run_apt
   touch plugin/local.vim
   git submodule init
   git submodule update
}

update_ubuntu() {
   git pull
   git submodule init
   git submodule update
   git submodule -q foreach git pull -q origin master
   run_apt
} # }}}
####################################################################################

if [ -z "${1}" ]; then
   echo "Missing action. Syntax: ${0} [command]"
   echo "  Options:"
   echo "    init    -- installs associated programs and creates all symlinks"
   echo "    update  -- updates packages associated with repo, creates any new symlinks"
   echo "    link    -- create symlinks for files (will not overwrite existing files"
   echo ""
   exit 1
fi
case "${1}" in
   'init')
      command -v pacman >/dev/null 2>&1  && build_arch
      command -v apt-get >/dev/null 2>&1 && build_ubuntu
      link
      ;;
   'update')
      command -v pacman >/dev/null 2>&1  && update_arch
      command -v apt-get >/dev/null 2>&1 && update_ubuntu
      link
      ;;
   'link')
      link
      ;;
esac
