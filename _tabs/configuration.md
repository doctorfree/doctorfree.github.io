---
layout: post
post_style: page
icon: fas fa-plus-circle
toc: true
order: 2
---

- [Asciiville configuration](#asciiville-configuration)
- [Asciiville utilities configuration](#asciiville-utilities-configuration)
  - [Kitty SSH terminfo configuration](#kitty-ssh-terminfo-configuration)
  - [Neovim text editor configuration](#neovim-text-editor-configuration)
  - [Newsboat RSS feed reader configuration](#newsboat-rss-feed-reader-configuration)
  - [NeoMutt email configuration](#neomutt-email-configuration)
  - [Mutt email configuration](#mutt-email-configuration)
  - [Tuir Reddit client configuration](#tuir-reddit-client-configuration)
- [Homebrew administration](#homebrew-administration)

### Asciiville configuration

Asciiville preferences are maintained in `$HOME/.config/asciiville/config`.
Preferences set in interactive menu mode are preserved over invocations
of `asciiville`. For example, if a command and terminal were selected
in interactive menu mode then those selections will automatically be
applied the next time `asciiville` is run.

After installing Asciiville, initialize Asciiville configuration and
install additional features by executing the `ascinit` command as a normal
user with `sudo` privilege. The `ascinit` command will customize the
configuration of several Asciiville packages and install additional packages.

If you wish to perform a "console" initialization on a headless system or a
system on which there is no available X Server, then execute the command
`ascinit -c` rather than `ascinit`. A "console" initialization skips the
installation of several graphical utilities including the terminal emulators
that Asciiville uses when in desktop mode. In addition, a "console"
initialization copies several `mailcap` files tailored for use on a console.
These `mailcap` files generally try to display images and video using
text-based character graphics on a console.

```console
# Execute the ascinit command:
ascinit
# Or, on a console system without the X11 windowing system:
ascinit -c
```

A sample Asciiville configuration file is provided below. In this sample
configuration the _ARTDIR_ is set to `/usr/share/asciiville/art`, the default
Asciiville Ascii Art galleries folder. To change the Ascii Art galleries folder,
modify this setting. For example, to change where `asciiville` looks for
Ascii Art galleries, this setting could be modified to:

```
ARTDIR=${HOME}/Pictures/AsciiArt
```

Asciiville commands would then look in `$HOME/Pictures/AsciiArt`
for Ascii Art galleries rather than `/usr/share/asciiville/art`.

Of particular interest are the `art_font_size` and `txt_font_size`
configuration settings. These control the size of the font used to
display Ascii Art slideshows and the Figlet text in slideshows.
Individual display devices differ in resolution. Terminal emulator
windows used for display of Ascii Art vary in number of rows and columns
available. The Ascii Art included with Asciiville was generated in fairly
high resolution. Reducing the `art_font_size` will decrease the amount
of screen the art display requires while increasing that font size will
increase the size of the art displayed. Similarly, decreasing or increasing
the `txt_font_size` will shrink or enlargen the Figlet text displayed.
The default settings for these two configuration parameters are '4' and
'20'. If the art displayed during a slideshow is too small or you wish
to make it larger, change `art_font_size=4` to `art_font_size=6` and
`txt_font_size=20` to `txt_font_size=24`. Some experimentation may be
required to fit the art to your display and terminal emulator window.
On a display with resolution 2560x1440 pixels, setting `art_font_size=8`
and `txt_font_size=28` provides a larger display of Asciiville ascii art
that fills most of the screen.

A sample Asciiville configuration file `$HOME/.config/asciiville/config`:

```
ARTDIR=/usr/share/asciiville/art
MUSEDIR=/usr/share/asciiville/music
SONG=/home/ronnie/Music/Buckingham_Green.mp3
ALTSONG=/Epic_Dramatic-Yuriy_Bespalov.wav
AUDIO=1
BROWSER=w3m
COMMAND=newsboat
FULLSCREEN=
LOLCAT="lolcat"
MTITLE="RSS Feeds"
CURRENT=
GNOME=1
RETRO=
TILIX=
XFCE4=
use_lolcat=1
use_lol=YES
journal="asciiville"
style="fancy"
art_font_size=8
txt_font_size=28
defchars='   ...,;:clodxkO0KXNWM'
revchars='MWNXK0Okxdolc:;,...   '
revlong='WMZO0QLCJUYXzcvun1il;:,^.. '
longchars=' ..^,:;li1nuvczXYUJCLQ0OZMW'
```

### Asciiville utilities configuration

Asciiville creates several default configuration files for utilities
included in the distribution. Examine these files to further customize
each program. The default configuration generated when running the
`ascinit` command should suffice and may be satisfactory.

Generated configuration files include:

- `$HOME/.config/btop/btop.conf` : Btop++ system monitor
- `$HOME/.config/got/config.yml` : Got text translation tool
- `$HOME/.config/neofetch/config.conf` : NeoFetch system info script
- `$HOME/.config/neomutt/` : NeoMutt email client startup files
- `$HOME/.config/nvim-Lazyman/` : Neovim text editor configuration and startup files
- `$HOME/.config/jrnl/` : Journal command `jrnl` configuration file
- `$HOME/.config/khard/khard.conf` : Address book `khard` configuration file
- `$HOME/.config/ranger/rifle.conf` : Rifle, Ranger's file opener
- `$HOME/.config/tuir/` : TUIR terminal UI for Reddit configuration files
- `$HOME/.mutt/muttrc` : Mutt email client
- `$HOME/.newsboat/` : Newsboat RSS feed reader configuration files
- `$HOME/.rainbow_config.json` : Rainbowstream Twitter client
- `$HOME/.tmux.conf` : Tmux terminal multiplexer
- `$HOME/.w3m/` : W3M web browser custom configuration
  - W3M web browser configured to act as a Markdown pager
  - W3M configuration enables support for many MIME types and external apps

These override or extend the settings in the utilities' global configuration
files, typically installed in `/etc/`. For example, the global configuration
for the Ranger File Manager can be found in `/etc/ranger/config/`. The W3M
web browser is configured in `/etc/w3m/`, and the NeoMutt global config is
`/etc/neomuttrc`.

After installing Asciiville and running the `ascinit` command, initialize the
the command line Twitter client by invoking the `rainbowstream` command and
authorizing the app to access your Twitter account.

#### Kitty SSH terminfo configuration

When using the Kitty terminal emulator to `ssh` into systems you may see the
error message "Unknown terminal type 'xterm-kitty'" or similar. To remedy this,
either manually install the Kitty terminfo entry or use the Kitty `ssh kitten`:

```shell
kitty +kitten ssh <hostname>
```

The ssh kitten will automatically copy the Kitty terminfo entry to the remote system.

#### Neovim text editor configuration

The `ascinit` Asciiville initialization installs a current version of
[Neovim](https://neovim.io){:target="_blank"}{:rel="noopener noreferrer"} and extensively configures and extends the
`nvim` text editor with plugins, configuration files, keyboard mappings,
color schemes, syntax highlighting, language servers, and settings.

We here in Asciiville are pretty proud of our Neovim setup and we wanted
to share it with you. The installation and configuration of Neovim is
entirely automated.

Neovim is not required for most of the use cases Asciiville supports but
it can prove to be quite useful in a text-based environment. However,
installation of Neovim is optional and the `ascinit` command will prompt
to see if you wish to install it. We recommend installing Neovim and trying
it out. If later you decide you do not need Neovim then it can be removed
with the command `ascinit -r neovim`.

The Asciiville configuration of Neovim is quite extensive and fairly complex.
See the [Lazyman README](https://github.com/doctorfree/nvim-lazyman#readme){:target="_blank"}{:rel="noopener noreferrer"}
for an introductory tour of the configuration, plugins, settings, and usage of Neovim.

After installing and initializing Asciiville with `ascinit`, try out
Neovim by running the command:

```shell
NVIM_APPNAME="nvim-Lazyman" nvim
```

While running `nvim` perform a Neovim health check by issuing the Neovim command:

```vim
:checkhealth
```

The Asciiville Neovim configuration provides one of the best development
environments available. It is hoped that we here in Asciiville will soon
be able to leverage this incredible text editing facility to augment our
creation of Ascii Art. Here are a couple of screenshots of Neovim using
the Asciiville setup:

<div align="center">
<p>
  <img src="https://raw.githubusercontent.com/doctorfree/Asciiville/main/screenshots/neovim-asciiville.png" style="width:800px;height:600px;" alt="neovim">
<br/>
  <img src="https://raw.githubusercontent.com/doctorfree/Asciiville/main/screenshots/neovim-search.png" style="width:800px;height:600px;" alt="neovim">
</p>
</div>

#### Newsboat RSS feed reader configuration

The [Newsboat](https://github.com/newsboat/newsboat){:target="_blank"}{:rel="noopener noreferrer"} character based RSS feed
reader is a quick and easy way to view configured RSSS feeds. Newsboat is
very lightweight and displays its list of configured feeds and articles almost
immediately. It's an excellent way to get a quick glimpse of News, Articles,
Blog posts, Twitter feeds, and more. Asciiville provides a default initial
configuration for Newsboat that includes RSS feeds for News sources, YouTube
channels, Reddit subreddits, Twitter feeds, Github repositories, Blogs, and
online Comics. To reconfigure Newsboat with the RSS feeds you wish to follow,
edit the file `$HOME/.newsboat/urls`.

Asciiville also provides a default Newsboat reader configuration with key
bindings, formatting, and other Newsboat view and usage parameters. To adjust
the way Newsboat displays feeds, formats output, and responds to input,
edit the file `$HOME/.newsboat/config`.

#### NeoMutt email configuration

The [NeoMutt](https://neomutt.org/){:target="_blank"}{:rel="noopener noreferrer"} email client is an improved Mutt client.
Asciiville installs NeoMutt as a dependency and provides support for configuring
and launching NeoMutt. Setup for NeoMutt is similar to setup for Mutt.

The `ascinit` command creates an initial NeoMutt configuration in
`$HOME/.config/neomutt/`. In order to use the NeoMutt email client it will be
necessary to configure `$HOME/.config/neomutt/accounts/*` with your name,
email address, and credentials. The default NeoMutt user configuration files
configure NeoMutt for use with GMail. This can be modified by editing the
accounts configured in `$HOME/.config/neomutt/neomuttrc`.

Asciiville provides three preconfigured NeoMutt email accounts -
`$HOME/.config/neomutt/accounts/gmail`, `$HOME/.config/neomutt/accounts/main`,
and `$HOME/.config/neomutt/accounts/cruzio`. The `accounts/gmail` NeoMutt
account is enabled by default while the other two are disabled by default.
The `main` account is a vanilla account with a basic configuration while the
`gmail` and `cruzio` accounts are highly curated and take advantage of some
advanced NeoMutt features. The `gmail` account is tailored for use with GMail
and the `cruzio` account is tailored for use with Cruzio, an independent
internet service provider in Santa Cruz, California. Cruzio was founded in
1989 by Chris and Peggy and has remained 100% locally owned and staffed.
The citizens of Asciiville encourage the patronage of independent locally
owned internet service providers.

In addition to the three preconfigured NeoMutt email accounts, Asciiville
also provides a preconfigured NNTP account. One of NeoMutt's advanced
features is the ability to act as an NNTP client, enabling it to read
and post to Usenet newsgroups. The NeoMutt account
`$HOME/.config/neomutt/accounts/nntp`, when enabled in `neomuttrc`,
can be used to connect to a Usenet Newsgroup server. The `nntp` account
uses `news.eternal-september.org` as the default NNTP server. In order
to access this Usenet server a free registration at
<https://www.eternal-september.org/RegisterNewsAccount.php>
is required.

Comments in `$HOME/.config/neomutt/accounts/gmail`
provide pointers to configuring your credentials with GMail. If Google 2FA
Authentication is enabled in your Google account, create an App password for
NeoMutt. See
[https://security.google.com/settings/security/apppasswords](https://security.google.com/settings/security/apppasswords){:target="_blank"}{:rel="noopener noreferrer"}

NeoMutt can use the output of external commands to set a configuration value.
Storing a password in a configuration file is generally a bad idea. Passwords
and other sensitive material can be stored elsewhere and a command used to
retrieve and set them in the configuration file. Storing a plain text password
in a file and reading that file from the NeoMutt configuration is better than
placing the password directly in the configuration file. But it is still plain
text in a file somewhere. A more secure manner of storing passwords can be
implemented using encryption with utilities like PGP or GPG.

The Asciiville configuration of NeoMutt is quite extensive and fairly complex.
See the
[Asciiville NeoMutt README](https://github.com/doctorfree/Asciiville/blob/main/conf/neomutt/README.md){:target="_blank"}{:rel="noopener noreferrer"}
for an introductory tour of the configuration, settings, and usage of NeoMutt
including the use of encrypted passwords and NeoMutt key bindings.

#### Mutt email configuration

Alternatively, you may prefer using the older but still maintained and robust
[Mutt](https://www.mutt.org/){:target="_blank"}{:rel="noopener noreferrer"} email client. Asciiville checks to see if Mutt
is installed and, if so, provides support for launching it as well as NeoMutt.
Mutt and NeoMutt can coexist peacefully.

Mutt is not installed as a dependency during the Asciiville installation.
If you wish to use the Mutt integration in Asciiville, Mutt must be installed.
A Mutt installation and Asciiville Mutt configuration can be accomplished
by running the command `ascinit -m` or `ascinit -M` for both Mutt and NeoMutt.
If no text based email client is desired, then configuration for both Mutt
and NeoMutt can be skipped by executing `ascinit -N` during initialization.

In order to use the Mutt email client it will be necessary to configure
`$HOME/.mutt/.muttrc` with your email address, name, and credentials.
Comments in `$HOME/.mutt/.muttrc` provide pointers to configuring your
credentials with GMail. If Google 2FA Authentication is enabled in your
Google account, create an App password for NeoMutt. See
[https://security.google.com/settings/security/apppasswords](https://security.google.com/settings/security/apppasswords){:target="_blank"}{:rel="noopener noreferrer"}

Asciiville `ascinit` Mutt initialization does not overwrite any previously
existing Mutt configuration files in `$HOME/.mutt/`. However, you may want
to examine the Mutt configuration provided in Asciiville by viewing the files
in `/usr/share/asciiville/mutt/`. If you want to use the Asciiville Mutt setup
files rather than your previously configured setup, move the existing
`$HOME/.mutt/` folder aside and rerun `ascinit`.

There are many Mutt configuration guides on the Internet.
ArchLinux has a good guide at
[https://wiki.archlinux.org/title/Mutt](https://wiki.archlinux.org/title/Mutt){:target="_blank"}{:rel="noopener noreferrer"}.

#### Tuir Reddit client configuration

The `tuir` command is a text based user interface for Reddit. A `tuir`
configuration is setup as part of the `ascinit` Asciiville initialization
and this configuration should work well for most users. However, if you wish to
login to your Reddit account using `tuir` then you will first need to generate
an OAuth client id and secret with Reddit. This process is described at:

[https://github.com/reddit-archive/reddit/wiki/oauth2](https://github.com/reddit-archive/reddit/wiki/oauth2){:target="_blank"}{:rel="noopener noreferrer"}

First visit
[https://www.reddit.com/prefs/apps/](https://www.reddit.com/prefs/apps/){:target="_blank"}{:rel="noopener noreferrer"}
and click "Create another app ..." at the bottom of the page. You can use
whatever you like for the Name of the app, I used 'tuir'. Make sure that the
'redirect uri' is `http://127.0.0.1:65000/` or whatever you have set it to in
`$HOME/.config/tuir/tuir.cfg` (most configurations will be unchanged and
can use `http://127.0.0.1:65000/`). I left the 'about url' blank.

After you have completed the process of creating a new app in Reddit,
update your `$HOME/.config/tuir/tuir.cfg` with your new `oauth_client_id`
and `oauth_client_secret`. These can be found back up towards the top of
the newly created app page.

After updating `tuir.cfg` with the new id and secret, open `tuir` and attempt
to login the Reddit by pressing the 'u' key while in tuir. This should open
your default browser and take you to Reddit where you can give your new app
authorization, leave the browser, and go back to `tuir` where you should now
be logged in.

### Homebrew administration

Beginning with Asciiville version 3.0.2 the `ascinit` initialization process
installs Homebrew and uses the `brew` package manager to install Asciiville
components and their dependencies. Using Homebrew allows the installation of
more recent versions of packages than is supported by some native package
managers (especially on Ubuntu Linux) and Homebrew is cross-platform allowing
the same installation process on all Linux distributions and Apple macOS.

The use of an alternate package manager can and probably will result in
some duplicate package installs, one previously installed with the native
package manager and another installed during Asciiville initialization by `brew`.
Homebrew is nicely isolated from the system packages and the duplicate packages
typically will not create a conflict or issue. The shell execution `PATH`
environment variable will determine which package is used.

However, it may be desirable to remove package duplicates both for disk space
and to avoid any possible conflict. Asciiville provides a convenience script
to locate duplicate packages installed on the system. To list identified
duplicate packages, execute the command:

```shell
/usr/share/asciiville/tools/bin/brewdups
```

To remove all identified duplicate packages:

```shell
/usr/share/asciiville/tools/bin/brewdups -r
```

Removal of duplicate packages poses some risk. For example, there may be
duplicate packages used by other users on the system who do not have Homebrew
in their execution PATH. If duplicate system packages are removed it is a
good idea to add the following to all users' shell startup files
(e.g. `.profile`, `.bashrc`, `.zshrc`):

```shell
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

or, on Apple macOS:

```shell
eval "$(/usr/local/bin/brew shellenv)"
```

**[Note:]** Asciiville testing has not revealed any issue with duplicate packages other than needlessly consumed disk space. It might be argued that the risk of removing duplicate system packages outweighs the benefit of recovering some disk space.

In addition to the regular system administration task of updating installed
packages with the native package manager (e.g. `sudo apt update` followed by
`sudo apt upgrade` or `sudo dnf update`), it is recommended to also update
Homebrew regularly. Note that with Homebrew it is not necessary to use `sudo`:

```shell
# Update all package definitions (formulae) and Homebrew itself
brew update
# List which of your installed packages (kegs) are outdated
brew outdated
# Upgrade everything
brew upgrade
# Upgrade a specific formula
brew upgrade <formula>
```
