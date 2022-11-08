# Pikachu Makefile

A very simple Makefile used in this article to illustrate how `make` works.

You'll need `make` installed to run it.

## How to install make

### Linux 
If you are running a Linux distro you probably already have `make` installed, try running `make -v` to see, if not install it using you package manager (apt, yum... ).

### macOS

You'll need to install the package manager `homebrew` first , see [how to do this at](https://docs.brew.sh/Installation)

Once `homebrew` is installed run `brew install make`

### Windows

_*Here be dragons!*_

Running `make` on Windows is a little tricky, you can actually install a native Windows port of `make` [from here](https://gnuwin32.sourceforge.net/packages/make.htm), but since you won't have the full suite of [GNU Core Utils](https://en.wikipedia.org/wiki/GNU_Core_Utilities) you'd run into issues running this Makefile.

I'd recommend installing & using [Cygwin](https://en.wikipedia.org/wiki/Cygwin), which can be [installed from here](https://www.cygwin.com/install.html)

On the install step where you install packages, make sure you search for & install the following:
* ["make-4.3-1" , The GNU version of the 'make' utility](https://cygwin.com/cgi-bin2/package-cat.cgi?file=x86_64%2Fmake%2Fmake-4.3-1&grep=make)
* ["curl-7.86.0-1", Multi-protocol file transfer tool](https://cygwin.com/cgi-bin2/package-cat.cgi?file=x86_64%2Fcurl%2Fcurl-7.86.0-1&grep=curl)
* ["bash-4.4.5-1 ", The GNU Bourne Again SHell](https://cygwin.com/cgi-bin2/package-cat.cgi?file=x86_64%2Fbash%2Fbash-4.4.5-1&grep=bash)
* ["coreutils-9.0-1", GNU core utilities (includes fileutils, sh-utils and textutils)](https://cygwin.com/cgi-bin2/package-cat.cgi?file=x86_64%2Fcoreutils%2Fcoreutils-9.0-1&grep=coreutils)

With these installed you *should* be able to run the `Makefile` in your cygwin.

_**NOTE**: I have not tested this on Windows, please file any issues you have against this repo or open a pull request to update the README._