---
title: Adding Art Galleries
author: doctorfree
date: 2023-07-06 12:55:00 +0800
tags: [art, ascii, gallery, art gallery, info]
pin: true
img_path: "/posts/20230706"
---

# Adding or Viewing an ASCII Art Gallery

Asciiville includes several ASCII Art galleries produced by the renowned
Ascii artist, Doctorwhen. These galleries can be viewed by opening
`asciiville` in interactive menu mode (execute `asciiville` with no
arguments or the `-i` argument). From the main Asciiville menu select
_Ascii Art_ then select an Ascii Art slideshow to view from
the list of slideshows available in the Asciiville Art menu.

Additional ASCII Art galleries can be added to the Asciiville Art menu
by creating and populating a directory in `/usr/share/asciiville/art/`
with ASCII Art files. The convention in Asciiville is for ASCII Art
filenames to end with the suffix `.asc`. Generate or locate ASCII Art
files, make sure the filenames end in `.asc`, and copy them to a new
folder in `/usr/share/asciiville/art/`. The new ASCII Art gallery will
show up in the menu listing the available ASCII Art slideshows the next
time you run `asciiville`.

## Generating ASCII Art

Asciiville provides utilities and convenience menus for generating ASCII
Art from existing images. The pre-existing images can be in any image format.
To generate ASCII Art from a folder of images either use the `show_ascii_art`
command or the interactive menu interface in `asciiville`:

### Using show_ascii_art to generate ASCII Art

The `show_ascii_art` command can be used to generate ASCII Art by supplying
it with an input folder of existing images and a desired output folder to
hold the generated ASCII Art files. To do so, invoke the command as follows:

`show_ascii_art -b -I <input folder> -O <output folder>`

For example, the command `show_ascii_art -I /u/pics/beach -O /u/pics/asciibeach`
would convert all of the image files in the `/u/pics/beach` folder into
ASCII Art files and store them in the `/u/pics/asciibeach` folder.

Note that the quality of generated ASCII Art is quite sensitive to the
font in use. The best quality can be achieved with a fixed width font and
small font size. You can think of the font as your paint brush and its size
as the size of the brush. Higher resolution ASCII Art is achieved with a
finer brush. The "palette" used to create ASCII Art is a string of characters.
A default palette is defined in Asciiville but alternate palettes can be
selected with command line switches.

If one of the terminal emulators that Asciiville is familiar with is used,
the font and font size are set for you in a terminal profile or by command
line arguments. The terminal emulators that Asciiville has integrated into
its generation and viewing facilities are _gnome-terminal_, _tilix_, and
_xfce4-terminal_. The currnt terminal window or console screen can also be
used but in that case the font and font size will be whatever is already set.

If you use the current terminal window to generate/view ASCII Art then you
may wish to set the font to a fixed width font and size 10 or 12. On the
other hand, sometimes lower resolution ASCII Art is appealing. It's up to you.

### Using asciiville menus to generate ASCII Art

When the `asciiville` command is invoked in interactive menu mode the main
menu contains an entry _Generate ASCII Art_. Selecting this menu entry will
prompt the user to select an image input directory. Answering 'y' to the
input directory prompt executes the Ranger file manager in directory selection
mode. Use the arrow keys to browse folders, press `Enter` to enter a directory,
and create a new directory with `:mkdir <dirname>`. While in the directory you
wish to select, quit Ranger with 'q' and that directory will be selected as
the image input directory. Do the same to select an ascii output directory.

After selecting an image input directory and ascii art output directory
the user will then be prompted to confirm the directory selections and
generate ASCII Art. Answering 'y' at this prompt will generate ASCII Art
files for each of the images in the image input directory and store them
in the ascii art output directory.

After using either of these methods to generate ASCII Art, follow the guide
above to add the newly generated ASCII Art folder to the Asciiville ASCII
Art galleries.

## Viewing an ASCII Art Gallery

Once your new ASCII Art Gallery has been generated and the resulting
folder of ASCII Art files with suffix `.asc` has been moved or copied
to `/usr/share/asciiville/art/`, the new ASCII Art gallery will show
up in the menu listing the available ASCII Art slideshows.

To view your new gallery, open `asciiville` in interactive menu mode
by executing the `asciiville` command. In the main menu, select the
first menu entry, "Ascii Art". This will display a menu of
slideshows to select from. One of the slideshow menu choices should be
the new gallery you have created. It will be displayed along with the
Asciiville standard slideshows as a menu entry named:

```
<your-gallery-folder-name> Art Slideshow
```

For example, if the directory name of the new gallery you added is
`/usr/share/asciiville/art/Cats` then the _Ascii Art_ menu
entry for your new gallery will be "_Cats Art Slideshow_". This menu
also contains entries to set some options for the slideshow. You can
specify the font size, whether to use audio, what song to play, which
terminal to use for display of the slideshow, and more. Select the options
you desire or use the default settings and then select the menu entry of
your new gallery slideshow by entering the number of the entry or the
name of your gallery folder then pressing 'Enter'.

Slideshows will display all of the files in the folder that can fit on
the screen or in the window of the terminal then exit back to the menu.
Slideshows can be interrupted by typing 'Ctrl-c'.

Slideshows can also be viewed using command line arguments to the
`asciiville` command rather than the interactive menu interface.
To view the _Cats_ slideshow in our example using the command line
interface, execute the command:

```console
asciiville -V Cats
```

or, if you prefer to use animated Lolcat coloring for the slideshow text:

```console
asciiville -V Cats -L 2
```

To view 25 randomly selected images from an Ascii Art gallery:

```console
asciiville -V Cats -E 25
```

Any of the slideshows in `/usr/share/asciiville/art/` can be viewed in a
similar manner by providing the slideshow folder name to the `-V` argument.

## Customizing an ASCII Art Gallery

Asciiville ascii art viewing utilities including slideshow display utilize
intelligent and configurable font size changes to render ascii art in higher
quality. Each Asciiville ascii art gallery can be configured with options
to control some of these font size and display features. To configure a
gallery, add or edit the file `/usr/share/asciiville/art/<gallery>/.config`.
An example Asciiville gallery configuration file can be found in
`/usr/share/asciiville/art/Vintage/.config`:

```
scale_art_font=2
scale_txt_font=1
set_font_size=1
uses_ansi_escape=
show_filename=
```

In this example, `scale_art_font=2` indicates double the font size used for
ascii art display; `scale_txt_font=1` indicates no change to the text font
size used for ascii art text display; `set_font_size=1` indicates make
font size changes; `uses_ansi_escape=` indicates this gallery's
ascii art does not utilize ANSI escape sequences to color its text; and
`show_filename=` indicates do not display the ascii art filename below
the displayed art.

The default settings for Asciiville ascii art galleries is:

```
scale_art_font=1
scale_txt_font=1
set_font_size=1
uses_ansi_escape=1
show_filename=
```

Ascii Art files can be compressed with `gzip` to preserve disk space.
For example, if you wish to compress the newly added `Cats` gallery art:

```console
cd /usr/share/asciiville/art/Cats
sudo gzip *.asc
```

Asciiville Ascii Art display utilities recognize and decompress compressed
Ascii Art automatically with very little overhead. Note that the file sizes
of Ascii Art generated from standard image formats can be larger than the
original image files. This is partly due to the fact that many standard
image formats use compression and also due to the ANSI escape sequences
used to color Ascii Art. However, once compressed using `gzip`, Ascii Art
files are typically much smaller than the image files used for input in
the conversion process. One drawback of compressing Ascii Art files is
the compressed file cannot be viewed simply with `cat filename.asc`, but
must first be decompressed before viewing. This drawback is easily
surmounted either by using Asciiville to view compressed Ascii Art or
invoking `gzip` to display the compressed files:

```console
gzip -cd /usr/share/asciiville/art/Cats/mycat.asc.gz
```
