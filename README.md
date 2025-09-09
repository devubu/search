# search
Scripts for searching text for Linux and Windows.

## Installation

    git clone https://github.com/devubu/search.git ~/Tools/Custom/Bash/search

## Tools

    https://github.com/junegunn/fzf
    https://github.com/BurntSushi/ripgrep
    https://github.com/sharkdp/fd
    https://github.com/sharkdp/bat

## gfzf (interactive search for text)

    cd <directory>
    gfzf

## ffzf (interactive search for file)
    
    cd <directory>
    fd -a -u -t f . / | fzf

## fd (search for files/directories)
   
    fd -a -u -t f . /
    fd -a -u -t f -e exe . /
    fd -a -u -t f -e txt . /
    fd -a -u -t f -e exe -e txt . /
    fd -a -u -t f -g "*<file_name>*" . /
    fd -a -u -t f -g "*<file_name>*" -e exe . /
    fd -a -u -t f -g "*<file_name>*" -e exe -e txt . /
    fd -a -u -t d . /
    fd -a -u -t d -g "*<directory_name>*" . /

## rg (search for text)

    rg -uu --no-messages '<string>' /
    rg -uu --no-messages '<string>' -t txt /
    rg -uu --no-messages '<string>' -t txt -t xml /
    rg -uu --no-messages "<string_1>|<string_2>|<string_3>|<string_4>" /
    rg -uu --no-messages '<string>' -g '*.txt' /
    rg -uu --no-messages '<string>' -g '*.txt' -g '*.xml' /

## Install Packages on Kali

    sudo apt install -y fzf
    sudo apt install -y ripgrep
    sudo apt install -y fd-find
    sudo apt install -y bat
    mkdir -p ~/.local/bin
    ln -s /usr/bin/fdfind ~/.local/bin/fd
    ln -s /usr/bin/batcat ~/.local/bin/bat

## Permanently Prepend $HOME/.local/bin to your $PATH for Zsh

    cat << 'EOF' >> ~/.zshrc
    
    if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
       export PATH="$HOME/.local/bin:$PATH"
    fi
    EOF

## Permanently Prepend $HOME/.local/bin to your $PATH for Bash

    cat << 'EOF' >> ~/.bashrc
    
    if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
       export PATH="$HOME/.local/bin:$PATH"
    fi
    EOF

## Add gfzf alias to ~/.zshrc

    echo "alias gfzf='~/Tools/Custom/Bash/search/gfzf.sh'" >> ~/.zshrc

## Add gfzf alias to ~/.bashrc

    echo "alias gfzf='~/Tools/Custom/Bash/search/gfzf.sh'" >> ~/.bashrc

## Source .zshrc to apply changes immediately to the current shell session

    source ~/.zshrc

## Source .zshrc to apply changes immediately to the current shell session

    source ~/.bashrc

## Download Prebuilt Binaries on Kali

    mkdir -p ~/Tools/fzf/v0.65.2/linux/amd64
    mkdir -p ~/Tools/fzf/v0.65.2/windows/amd64
    curl -o ~/Tools/fzf/v0.65.2/linux/amd64/fzf-0.65.2-linux_amd64.tar.gz -L https://github.com/junegunn/fzf/releases/download/v0.65.2/fzf-0.65.2-linux_amd64.tar.gz
    tar -xzvf ~/Tools/fzf/v0.65.2/linux/amd64/fzf-0.65.2-linux_amd64.tar.gz -C ~/Tools/fzf/v0.65.2/linux/amd64 fzf && rm ~/Tools/fzf/v0.65.2/linux/amd64/fzf-0.65.2-linux_amd64.tar.gz
    curl -o ~/Tools/fzf/v0.65.2/windows/amd64/fzf-0.65.2-windows_amd64.zip -L https://github.com/junegunn/fzf/releases/download/v0.65.2/fzf-0.65.2-windows_amd64.zip
    unzip ~/Tools/fzf/v0.65.2/windows/amd64/fzf-0.65.2-windows_amd64.zip fzf.exe -d ~/Tools/fzf/v0.65.2/windows/amd64 && rm ~/Tools/fzf/v0.65.2/windows/amd64/fzf-0.65.2-windows_amd64.zip

    mkdir -p ~/Tools/ripgrep/v14.1.1/linux/x86_64
    mkdir -p ~/Tools/ripgrep/v14.1.1/windows/x86_64
    curl -o ~/Tools/ripgrep/v14.1.1/linux/x86_64/ripgrep-14.1.1-x86_64-unknown-linux-musl.tar.gz -L https://github.com/BurntSushi/ripgrep/releases/download/14.1.1/ripgrep-14.1.1-x86_64-unknown-linux-musl.tar.gz
    tar -xzvf ~/Tools/ripgrep/v14.1.1/linux/x86_64/ripgrep-14.1.1-x86_64-unknown-linux-musl.tar.gz -C ~/Tools/ripgrep/v14.1.1/linux/x86_64 --strip-components=1 ripgrep-14.1.1-x86_64-unknown-linux-musl/rg && rm ~/Tools/ripgrep/v14.1.1/linux/x86_64/ripgrep-14.1.1-x86_64-unknown-linux-musl.tar.gz
    curl -o ~/Tools/ripgrep/v14.1.1/windows/x86_64/ripgrep-14.1.1-x86_64-pc-windows-msvc.zip -L https://github.com/BurntSushi/ripgrep/releases/download/14.1.1/ripgrep-14.1.1-x86_64-pc-windows-msvc.zip
    unzip -j ~/Tools/ripgrep/v14.1.1/windows/x86_64/ripgrep-14.1.1-x86_64-pc-windows-msvc.zip ripgrep-14.1.1-x86_64-pc-windows-msvc/rg.exe -d ~/Tools/ripgrep/v14.1.1/windows/x86_64 && rm ~/Tools/ripgrep/v14.1.1/windows/x86_64/ripgrep-14.1.1-x86_64-pc-windows-msvc.zip

    mkdir -p ~/Tools/fd/v10.3.0/linux/x86_64
    mkdir -p ~/Tools/fd/v10.3.0/windows/x86_64
    curl -o ~/Tools/fd/v10.3.0/linux/x86_64/fd-v10.3.0-x86_64-unknown-linux-musl.tar.gz -L https://github.com/sharkdp/fd/releases/download/v10.3.0/fd-v10.3.0-x86_64-unknown-linux-musl.tar.gz
    tar -xzvf ~/Tools/fd/v10.3.0/linux/x86_64/fd-v10.3.0-x86_64-unknown-linux-musl.tar.gz -C ~/Tools/fd/v10.3.0/linux/x86_64 --strip-components=1 fd-v10.3.0-x86_64-unknown-linux-musl/fd && rm ~/Tools/fd/v10.3.0/linux/x86_64/fd-v10.3.0-x86_64-unknown-linux-musl.tar.gz
    curl -o ~/Tools/fd/v10.3.0/windows/x86_64/fd-v10.3.0-x86_64-pc-windows-msvc.zip -L https://github.com/sharkdp/fd/releases/download/v10.3.0/fd-v10.3.0-x86_64-pc-windows-msvc.zip
    unzip -j ~/Tools/fd/v10.3.0/windows/x86_64/fd-v10.3.0-x86_64-pc-windows-msvc.zip fd-v10.3.0-x86_64-pc-windows-msvc/fd.exe -d ~/Tools/fd/v10.3.0/windows/x86_64 && rm ~/Tools/fd/v10.3.0/windows/x86_64/fd-v10.3.0-x86_64-pc-windows-msvc.zip

    mkdir -p ~/Tools/bat/v0.25.0/linux/x86_64
    mkdir -p ~/Tools/bat/v0.25.0/windows/x86_64
    curl -o ~/Tools/bat/v0.25.0/linux/x86_64/bat-v0.25.0-x86_64-unknown-linux-musl.tar.gz -L https://github.com/sharkdp/bat/releases/download/v0.25.0/bat-v0.25.0-x86_64-unknown-linux-musl.tar.gz
    tar -xzvf ~/Tools/bat/v0.25.0/linux/x86_64/bat-v0.25.0-x86_64-unknown-linux-musl.tar.gz -C ~/Tools/bat/v0.25.0/linux/x86_64 --strip-components=1 bat-v0.25.0-x86_64-unknown-linux-musl/bat && rm ~/Tools/bat/v0.25.0/linux/x86_64/bat-v0.25.0-x86_64-unknown-linux-musl.tar.gz
    curl -o  ~/Tools/bat/v0.25.0/windows/x86_64/bat-v0.25.0-x86_64-pc-windows-msvc.zip -L https://github.com/sharkdp/bat/releases/download/v0.25.0/bat-v0.25.0-x86_64-pc-windows-msvc.zip
    unzip -j ~/Tools/bat/v0.25.0/windows/x86_64/bat-v0.25.0-x86_64-pc-windows-msvc.zip bat-v0.25.0-x86_64-pc-windows-msvc/bat.exe -d ~/Tools/bat/v0.25.0/windows/x86_64 && rm ~/Tools/bat/v0.25.0/windows/x86_64/bat-v0.25.0-x86_64-pc-windows-msvc.zip

## Host Linux Prebuilt Binaries and gfzf.sh on Kali

    python3 -m http.server 80 -d ~/Tools/fzf/v0.65.2/linux/amd64
    python3 -m http.server 80 -d ~/Tools/ripgrep/v14.1.1/linux/x86_64
    python3 -m http.server 80 -d ~/Tools/fd/v10.3.0/linux/x86_64
    python3 -m http.server 80 -d ~/Tools/bat/v0.25.0/linux/x86_64
    python3 -m http.server 80 -d ~/Tools/Custom/Bash/search

## Download Linux Prebuilt binaries and gfzf.sh on Linux Target

    curl -s -o /tmp/fzf http://<kali_ip>/fzf; chmod +x /tmp/fzf
    curl -s -o /tmp/rg http://<kali_ip>/rg; chmod +x /tmp/rg
    curl -s -o /tmp/fd http://<kali_ip>/fd; chmod +x /tmp/fd
    curl -s -o /tmp/bat http://<kali_ip>/bat; chmod +x /tmp/bat
    curl -s -o /tmp/gfzf.sh http://<kali_ip>/gfzf.sh; chmod +x /tmp/gfzf.sh

## Export PATH on Linux Target (For CTFs)

    export PATH="/tmp:$PATH"

## Alternative Export PATH on Linux Target (Standard system tools will run before anything in /tmp)

    export PATH="$PATH:/tmp"

## Host Windows Prebuilt Binaries on Kali

    python3 -m http.server 80 -d ~/Tools/fzf/v0.65.2/windows/amd64
    python3 -m http.server 80 -d ~/Tools/ripgrep/v14.1.1/windows/x86_64
    python3 -m http.server 80 -d ~/Tools/fd/v10.3.0/windows/x86_64
    python3 -m http.server 80 -d ~/Tools/bat/v0.25.0/windows/x86_64

## Download Windows Prebuilt Binaries on Windows Target

    Invoke-WebRequest 'http://<kali_ip>/fzf.exe' -OutFile "C:\ProgramData\fzf.exe"
    Invoke-WebRequest 'http://<kali_ip>/rg.exe' -OutFile "C:\ProgramData\rg.exe"
    Invoke-WebRequest 'http://<kali_ip>/fd.exe' -OutFile "C:\ProgramData\fd.exe"
    Invoke-WebRequest 'http://<kali_ip>/bat.exe' -OutFile "C:\ProgramData\bat.exe"

## Modify Environment Variable $env:PATH (For CTFs) (Risker: Programs there take priority over system/user executables with the same name.)

    $env:PATH = "C:\ProgramData;" + $env:PATH

## Alternative Modify Environment Variable $env:PATH (Safer: system directories (C:\Windows\System32, etc.) still take priority.)

    $env:PATH = $env:PATH + ";C:\ProgramData"

## Paste the following into PowerShell

    function cbat {
        bat --paging=never @Args
    }

    function bfzf {
        fzf --preview="bat --color=always {}"
    }
    
    function ffzf {
        fd . -a -u -t f | fzf --preview="bat --color=always {}"
    }
    
    
    function gfzf {
        $reload = 'reload:rg -uuu --column --color=always --smart-case {q} || :'
    
        fzf --disabled --ansi `
            --bind "start:$reload" `
            --bind "change:$reload" `
            --delimiter ":" `
            --preview 'bat --style=numbers --color=always --highlight-line {2} {1}' `
            --preview-window "+{2}/2"
    }
    
    function copy {
        Set-Clipboard
    }
    
    function paste {
        Get-Clipboard
    }
