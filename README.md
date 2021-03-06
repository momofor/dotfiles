# my dotfiles

## installation

## dependancies

-   **awesome** the window manager
-   **rofi** the run prompt \* **fish** or zsh the shell
-   **polybar** the status bar
-   **neo(vim)** the text editor
-   **stow** to put everything in a symlink
-   **alacritty** as terminal emulator
-   **duckduckgo** as search engine

### for debian use this command to download the dependancies except polybar

> #### `sudo apt install awesome rofi fish neovim stow`

#### note

##### for polybar go to the **[polybar github][1]** to download it

[1]: https://github.com/polybar/polybar "a nice bar"

#### If on ubuntu use this command for dependencies

```shell
sudo apt-get install \
cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev \
libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev \
libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen \
xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev \
libiw-dev libcurl4-openssl-dev libpulse-dev \
libxcb-composite0-dev xcb libxcb-ewmh2
```

##### download the dependancies then do `git clone https://www.github.com/dotfiles`

#### inside dotfiles do `stow *` to symlink all the config files to their right places

---

#### for my duckduckgo config use this passphrase after doing load setting

> MomoforDotfiles

## screenshots

see in reddit

## table example

|  program   |         role         |
| :--------: | :------------------: |
|  awesome   |    window manager    |
|    rofi    |      run prompt      |
|    fish    |        shell         |
|  polybar   |      status bar      |
|  (neo)vim  |     text editor      |
|    stow    | config files manager |
| alacritty  |  terminal emulator   |
| duckduckgo |     seach engine     |
|    tmux    | terminal multiplexer |

### for neovim dependecies and how to install them see [this readme](nvim/.config/nvim/README.md)
