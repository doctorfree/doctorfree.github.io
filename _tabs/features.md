---
layout: post
post_style: page
icon: fas fa-info-circle
toc: true
order: 3
---

<div align="center">
  <img src="https://raw.githubusercontent.com/wiki/doctorfree/Asciiville/pics/asciiville.png" style="width:1067px;height:176px;" alt="asciiville">
</div>

## Asciiville Features

Asciiville integrations and extensions are aimed at the character
based terminal and console user. They enable easy to use seamlessly
integrated control of a variety of ASCII Art, animation, and utilities
in a lightweight character based environment.

At the core of Asciiville is the `asciiville` command which acts as
a front-end for a variety of terminal commands and `tmux` sessions.

### The asciiville Command

The `asciiville` command can be used to display Ascii Art either
as a slideshow or interactively. For example:

```console
# Slideshow of Ascii Art in /usr/share/asciiville/art/Art/
asciiville -V Art
# Slideshow of Ascii Art in /usr/share/asciiville/art/Vintage/
asciiville -V Vintage
# Interactive display of Ascii Art in .../file1 and .../file2
asciiville file1 file2 ...
# Slideshow of Ascii Art in file1, file2, and file3
asciiville -V files file1 file2 file3
# Slideshow of Ascii Art files listed in /tmp/asciiart.txt
asciiville -V files=/tmp/asciiart.txt
```

Filenames provided to `asciiville`, either on the command line or in
a specified file, can be absolute paths to files; relative paths to files;
or relative paths to files in the Asciiville Ascii Art galleries folder.
Ascii Art filenames may be provided with or without the filename suffix
(e.g. `Friends/tux.asc` or `Friends/tux.asc.gz` or `Friends/tux`).

When viewing Ascii Art in display mode it is possible to enter 'browse/zoom'
mode by entering 'b' or 'z' at the keyboard. In this mode the currently
displayed art can be zoomed in and out.

For greater detail see the [documentation](https://asciiville.dev/documentation).

The `asciiville` command can also be used to invoke commands in a variety of ways:

- The lightweight character based system monitor, `btop`
- The lightweight character based web browser, `w3m`
- The lightweight character based mail client, `neomutt`
- The lightweight character based RSS feed reader, `newsboat`
- The lightweight character based FTP client, `cbftp`
- The lightweight character based music player, `mpcplus`
- The lightweight character based file manager, `ranger`
- The lightweight character based disk usage analyzer, `gdu`
- The lightweight character based journal app, `jrnl`
- The lightweight character based terminal UI for Reddit, `tuir`
- Featureful ASCII Art display including slideshow and zoom capabilities
- Character based ASCII Art and image to ascii conversion utility `jp2a`
- One or more terminal emulators running a command
- A tmux session
- A command line web search
- A zoomable map of the world
- Command line character based Twitter client
- Translate words and phrases from and to a wide variety of languages
- A network download/upload speed test
- The AAlib BB demo running in a tmux session (Debian based systems only)
- The ASCII text-based dungeon game `nethack` with Extended ASCII glyphs
- The `cmatrix` command that displays the screen from "The Matrix"
- Many text based applications and games
- ASCII Art creation tool `aewan`
- Display system info
- Display a random Pokemon
- Display the Phase of the Moon
- Display a weather report
- Display the [MusicPlayerPlus](https://musicplayerplus.dev){:target="_blank"}{:rel="noopener noreferrer"} or [RoonCommandLine](https://rooncommand.dev){:target="_blank"}{:rel="noopener noreferrer"} interactive menus
- Any character based client the user wishes to run
- Several asciimatics animations optionally accompanied by audio

Without arguments or with the `-i` argument, `asciiville` presents a set
of interactive menus that can be used to control its behavior.

### Component Integration

Integration is provided for:

- [aewan](https://github.com/doctorfree/asciiville-aewan#readme){:target="_blank"}{:rel="noopener noreferrer"}, Ascii Art creation tool
- [btop](https://github.com/doctorfree/btop#readme){:target="_blank"}{:rel="noopener noreferrer"}, character based system monitor
- [cbftp](https://github.com/doctorfree/cbftp#readme){:target="_blank"}{:rel="noopener noreferrer"}, character based FTP client
- [ddgr](https://github.com/jarun/ddgr#readme){:target="_blank"}{:rel="noopener noreferrer"}, command line web search using DuckDuckGo
- [jrnl](https://jrnl.sh/en/stable/){:target="_blank"}{:rel="noopener noreferrer"}, a simple command line journal application
- [khard](https://github.com/lucc/khard){:target="_blank"}{:rel="noopener noreferrer"}, address book for the Unix console
- [w3m](https://w3m.sourceforge.net/){:target="_blank"}{:rel="noopener noreferrer"}, another character based web browser
- [lynx](https://lynx.invisible-island.net/){:target="_blank"}{:rel="noopener noreferrer"}, character based web browser
- [mutt](https://www.mutt.org/){:target="_blank"}{:rel="noopener noreferrer"}, character based email client
- [neomutt](https://neomutt.org/){:target="_blank"}{:rel="noopener noreferrer"}, character based email client
- [neovim](https://neovim.io/){:target="_blank"}{:rel="noopener noreferrer"}, advanced open source screen-based text editor
- [newsboat](https://github.com/newsboat/newsboat){:target="_blank"}{:rel="noopener noreferrer"}, character based RSS feed reader
- [ranger](https://ranger.github.io/){:target="_blank"}{:rel="noopener noreferrer"}, character based file manager
- [tuir](https://gitlab.com/ajak/tuir/){:target="_blank"}{:rel="noopener noreferrer"}, terminal UI for Reddit
- [gdu](https://github.com/dundee/gdu#readme){:target="_blank"}{:rel="noopener noreferrer"}, character based disk usage analyzer
- [got](https://github.com/fedeztk/got){:target="_blank"}{:rel="noopener noreferrer"}, text based translation tool
- [mpcplus](https://musicplayerplus.dev/posts/Introduction){:target="_blank"}{:rel="noopener noreferrer"}, featureful ncurses based Music Player client
- [mplayer](https://mplayerhq.hu/design7/info.html){:target="_blank"}{:rel="noopener noreferrer"}, a media player
- [asciimatics](https://github.com/peterbrittain/asciimatics){:target="_blank"}{:rel="noopener noreferrer"} - automatically display a variety of character based animation effects
- [asciinema](https://asciinema.org/){:target="_blank"}{:rel="noopener noreferrer"} - automatically create ascii character based video clips
- [rainbowstream](https://github.com/orakaro/rainbowstream){:target="_blank"}{:rel="noopener noreferrer"} - command line character based Twitter client
  - See [the rainbowstream usage manual](https://rainbowstream.readthedocs.io/en/latest/#usage){:target="_blank"}{:rel="noopener noreferrer"} to get started
- [endoh1](https://github.com/mame/winner/tree/main/2012/endoh1){:target="_blank"}{:rel="noopener noreferrer"}, ascii fluid dynamics simulation
- [mapscii](https://github.com/rastapasta/mapscii#readme){:target="_blank"}{:rel="noopener noreferrer"}, zoomable map of the world
- [cmatrix](https://github.com/abishekvashok/cmatrix){:target="_blank"}{:rel="noopener noreferrer"}, screen from "The Matrix"
- [nethack](https://en.wikipedia.org/wiki/NetHack){:target="_blank"}{:rel="noopener noreferrer"}, ASCII text dungeon game
- [ninvaders](https://en.wikipedia.org/wiki/Space_Invaders){:target="_blank"}{:rel="noopener noreferrer"}, ASCII text version of Space Invaders
- [tetris](https://en.wikipedia.org/wiki/Tetris){:target="_blank"}{:rel="noopener noreferrer"}, ASCII text version of Tetris
- [tmux](https://github.com/tmux/tmux/wiki){:target="_blank"}{:rel="noopener noreferrer"}, a terminal multiplexer
- [wttr.in](https://github.com/chubin/wttr.in){:target="_blank"}{:rel="noopener noreferrer"}, console-oriented weather report
- Enhanced key bindings for extended control of terminal windows
- Support for several terminal emulators
  - xfce4-terminal
  - gnome-terminal
  - kitty
  - tilix
  - cool-retro-term
- [MusicPlayerPlus](https://musicplayerplus.dev){:target="_blank"}{:rel="noopener noreferrer"}, character based suite of commands to manage music server and player
- [RoonCommandLine](https://rooncommand.dev){:target="_blank"}{:rel="noopener noreferrer"}, command line control of the Roon audio system over a local network
