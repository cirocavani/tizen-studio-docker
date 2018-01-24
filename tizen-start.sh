#!/bin/bash
set -eu

cd $HOME

tizen-studio/ide/TizenStudio.sh &

zenity --info --text="Click OK to stop Tizen Studio container."
