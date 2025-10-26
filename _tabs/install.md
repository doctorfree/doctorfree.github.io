---
layout: post
post_style: page
icon: fas fa-arrow-circle-down
toc: true
order: 1
---

## Asciiville Installation

Asciiville 3.0.1 and later can be installed on any architecture.
Asciiville 3.0.2 and later can optionally utilize
[Homebrew](https://brew.sh){:target="_blank"}{:rel="noopener noreferrer"} to install packages during `ascinit`
post installation initialization.

Asciiville can be installed on Linux systems using the Arch Linux
packaging format, the Debian packaging format, the Red Hat Package
Manager (RPM), or manually with the Linux compressed tar archive.
Asciiville can be installed on Apple macOS using the Darwin
compressed tar archive.

Currently tested platforms include Apple macOS, Arch Linux,
Ubuntu Linux, Fedora Linux, and Raspbian Linux.

Installation packages are provided in Debian packaging format, Red Hat
package manager (RPM) format, and Arch Linux packaging format.

See the [Build](https://asciiville.dev#build) section to compile and build a
package on an Linux platform other than those for which packages are provided.

### Asciiville Kasm workspace

**NEWS!** `Asciiville` is now available as a [Kasm Workspace](https://kasmweb.com)
by adding `https://doctorfree.github.io/kasm-registry/` as a
[Kasm 3rd party registry](https://www.kasmweb.com/docs/latest/guide/workspace_registry.html)
and installing the `Asciiville` workspace in your Kasm instance.

### Quickstart

- Install the latest Arch, Debian, macOS, RPM, or compressed tar archive format installation package from the [Asciiville Releases](https://github.com/doctorfree/Asciiville/releases){:target="_blank"}{:rel="noopener noreferrer"} page
- Run the `ascinit` command
  - Must be done as a normal user with `sudo` privilege
  - Run `ascinit -c` to perform a console initialization (no graphical utilities)
- Initialize the command line Twitter client by invoking the `rainbowstream` command and authorizing the app to access your Twitter account
- Execute the `asciiville` command in interactive menu mode by running `asciiville -i`
- See the [online asciiville man page](https://github.com/doctorfree/Asciiville/wiki/asciiville.1){:target="_blank"}{:rel="noopener noreferrer"} or `man asciiville` for different ways to invoke the `asciiville` command

The `asciiville` command can simply take ascii art filenames as arguments
and it will display them. The full filename isn't even necessary, it will
try to figure out what you mean. For example, to test whether your Asciiville
installation is working, try the command:

```console
asciiville Waterfalls/wallhaven-r768vq
```

This should display a waterfall rendered with characters as ascii art.

### Arch Linux package installation

The `pacman` package manager is one of the major distinguishing features of
Arch Linux. It combines a simple binary package format with an easy-to-use build
system. The goal of _pacman_ is to make it possible to easily manage packages,
whether they are from the official repositories or the user's own builds.

To install on an Arch based Linux system, download the latest Arch format
package from the
[Asciiville Releases](https://github.com/doctorfree/Asciiville/releases){:target="_blank"}{:rel="noopener noreferrer"}.

Install the Asciiville package by executing the command

```console
sudo pacman -U ./Asciiville_<version>-<release>-any.pkg.tar.zst
```

### Debian package installation

Many Linux distributions, most notably Ubuntu and its derivatives, use the
Debian packaging system.

To tell if a Linux system is Debian based it is usually sufficient to
check for the existence of the file `/etc/debian_version` and/or examine the
contents of the file `/etc/os-release`.

To install on a Debian based Linux system, download the latest Debian format
package from the
[Asciiville Releases](https://github.com/doctorfree/Asciiville/releases){:target="_blank"}{:rel="noopener noreferrer"}.

Install the Asciiville package by executing the command

```console
sudo apt install ./Asciiville_<version>-<release>.deb
```

or

```console
sudo dpkg -i ./Asciiville_<version>-<release>.deb
```

Similarly, on a Raspberry Pi:

```console
sudo apt install ./Asciiville_<version>-<release>.deb
```

or

```console
sudo dpkg -i ./Asciiville_<version>-<release>.deb
```

### RPM package installation

Red Hat Linux, SUSE Linux, and their derivatives use the RPM packaging
format. RPM based Linux distributions include Fedora, AlmaLinux, CentOS,
openSUSE, OpenMandriva, Mandrake Linux, Red Hat Linux, and Oracle Linux.

To install on an RPM based Linux system, download the latest RPM format
package from the
[Asciiville Releases](https://github.com/doctorfree/Asciiville/releases){:target="_blank"}{:rel="noopener noreferrer"}.

Install the Asciiville package by executing the command

```console
sudo dnf localinstall ./Asciiville_<version>-<release>.rpm
```

or

```console
sudo yum localinstall ./Asciiville_<version>-<release>.rpm
```

### Manual installation

On systems for which the Arch, Debian, or RPM packages will not suffice,
install manually either by cloning the repository or by downloading the
`Install-bin.sh` script and the gzip'd distribution archive for your platform.

Asciiville can be installed by cloning the repository and executing the
`Install` script:

```bash
git clone https://github.com/doctorfree/Asciiville
cd Asciiville
./Install
```

Alternatively, after downloading the installation script and distribution
archive, as a user with sudo privilege execute the commands:

```bash
chmod 755 Install-bin.sh
sudo ./Install-bin.sh /path/to/Asciiville_<version>-<release>.<arch>.tgz
```

After successfully installing Asciiville, as a normal user run the `ascinit`
command to initialize Asciiville. **[Note:]** Run the `ascinit` command as the
user who will be using `asciiville`. No `sudo` is needed, just `ascinit`.

### BB AAlib Demo

The BB AAlib Demo is not included in some distributions' default RPM
repositories. Because of that, it is not included as a dependency in
RPM installs. However, the `asciiville` command will utilize the BB Demo
if it is installed. To activate this feature it may be necessary to
manually install the `bb` package. This may entail enabling a third-party
repository. For example, on Fedora Linux, to install `bb`:

- Add RPM Fusion repositories to your system
- Download latest rpmsphere-release rpm from
  - <https://github.com/rpmsphere/noarch/tree/master/r>
- Install rpmsphere-release rpm:
  - `sudo rpm -Uvh rpmsphere-release*rpm`
- Install bb rpm package:
  - `sudo dnf install bb`

The BB AAlib Demo is not required. It's just a fun demo.
