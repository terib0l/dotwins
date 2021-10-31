# Dotfiles for Windows

This is dotfiles for windows.

## Installation
```
## Install scoop: https://scoop.sh/

scoop install git python neovim nodejs yarn sudo
python -m pip install --user neovim pynvim

sudo Add-MpPreference -ExclusionPath 'C:\Users\[username]\scoop'
sudo Add-MpPreference -ExclusionPath 'C:\ProgramData\scoop'

cd %USERPROFILE%\AppData\Local\
git clone https://github.com/terib0l/dotwins.git
cd dotwins
nvim

copy .\.wslconfig %USERPROFILE%\
copy .\.macro %USERPROFILE%\

## (for coc)
cd %USERPROFILE%\AppData\Local\dotwins\.vim\dein\repos\github.com\neoclide\coc.nvim_master\
git clean -xfd
yarn install --frozen-lockfile

## (alias for commandprompt)
sudo reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor" /v Autorun /t REG_SZ /d "CALL %USERPROFILE%\AppData\Local\dotwins\setup.bat"
sudo reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_SZ /d "%PATH%;%USERPROFILE%\AppData\Local\dotwins\prompt"

## Restart Command Prompt

## (other)
$ scoop install grep curl ...
```

## What dotwins can do:

* neovim
* (comfortably)
    * command prompt (macro, prompt)
    * wsl
    * vim
