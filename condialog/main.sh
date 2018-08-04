#!/bin/bash

envs=$(conda info --envs  | sed '/^$/d' | sed '/#/d' | sed '/python/d' | awk '{print NR, $1}') 
#echo "$envs"

OPTION=$(whiptail --title "Anaconda envs" --menu "Choose your envs" 15 60 4 \
      $envs 3>&1 1>&2 2>&3)

CHOICE_TEXT="$(echo "$envs" | sed -n "$OPTION"p | cut -d ' ' -f2-)"

echo Your choice is "$CHOICE_TEXT"

#ask_conda="$(PS1="$PS1" $_CONDA_EXE shell.posix activate "$@")" || \return $?
/home/ubuntu/anaconda3/bin/conda shell.posix activate "$CHOICE_TEXT"

#. /home/ubuntu/anaconda3/etc/profile.d/conda.sh 
#_conda_activate $CHOICE_TEXT

#export PS1

# source activate $CHOICE_TEXT
# source ~/anaconda3/bin/activate $CHOICE_TEXT
#CMD="source activate $CHOICE_TEXT"
#echo $CMD
#eval "$CMD"
