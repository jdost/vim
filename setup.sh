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
   linkIfNot "" $PWD/temp
} # }}}
####################################################################################
# Install - Arch {{{
aurGet() {
   cd $HOME/.aur/
   ABBR=${1:0:2}
   wget http://aur.archlinux.org/packages/$ABBR/$1/$1.tar.gz
   tar -xf "$1.tar.gz"
   rm "$1.tar.gz"
   cd "$1"
   makepkg
}

run_pacman() {
   sudo pacman -Sy
   sudo pacman -S --needed vim
}

build_arch() {
   run_pacman
   git submodule init
}

update_arch() {
   git pull
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
   git submodule init
}

update_ubuntu() {
   git pull
   git submodule -q foreach git pull -q origin master
   run_apt
} # }}}
####################################################################################

if [[ -z "${1}" ]]; then
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
      [[ ${which pacman} =~ "/bin" ]] && build_arch
      [[ ${which apt-get} =~ "/bin" ]] && build_ubuntu
      link
      ;;
   'update')
      [[ ${which pacman} =~ "/bin" ]] && update_arch
      [[ ${which apt-get} =~ "/bin" ]] && update_ubuntu
      link
      ;;
   'link')
      link
      ;;
esac
