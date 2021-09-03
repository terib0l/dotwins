# Dotfiles for Windows
## Description

This is dotfiles for windows.

## Contents
```
.
├── .config
│   ├── dein.toml
│   ├── dein_lazy.toml
│   └── plugins/
├── .vim
│   └── dein/
├── init.vim
├── .macro
├── .wslconfig
├── setup.bat
└── README.md

```

## Setup
```
> Install scoop: https://scoop.sh/

$ scoop install git python neovim nodejs yarn sudo

$ python -m pip install --user neovim pynvim

$ sudo Add-MpPreference -ExclusionPath 'C:\Users\[username]\scoop'

$ sudo Add-MpPreference -ExclusionPath 'C:\ProgramData\scoop'

$ cd %USERPROFILE%\AppData\Local\

$ git clone https://github.com/terib0l/dotwins.git

$ cd dotwins

$ nvim

$ copy .\.wslconfig %USERPROFILE%\

$ copy .\.macro %USERPROFILE%\

### for coc
$ cd %USERPROFILE%\AppData\Local\dotwins\.vim\dein\repos\github.com\neoclide\coc.nvim_master\
$ git clean -xfd
$ yarn install --frozen-lockfile

### alias for commandprompt
> Open Registory-Editor
  > Move HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor
    > [New] -> [String Value] -> Name "Autorun"
      > Modify "Autorun"
        > Value "CALL /path/to/setup.bat"
        SAMPLE: "CALL C:\Users\[UserName]\AppData\Local\dotwins\setup.bat"

### other
$ scoop install grep curl ...
```
