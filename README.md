# First init
curl -Lks https://gist.githubusercontent.com/TeeWallz/9e7341d14656a4cc7543664e96592e8a/raw/7db1ba11bc9193b7aa200ee0ac27a0c31be755f4/init-dotfiles.sh | /bin/bash


# Pull into new system
curl -Lks https://gist.githubusercontent.com/TeeWallz/0fc9cbfaeeb5a4a0ce9440446174a5ff/raw/4a1b812008bd342f8ab6bf997e414a8f6626d280/install-dotfiles.sh | /bin/bash


# Add new files into git
```bash
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```
