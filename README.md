# balcc-restorer

Using [Tiny Core Linux](http://distro.ibiblio.org/tinycorelinux/) as a base image, this is a tool that prevides easy access to image backup and restore of hard drives on a system.

It utilises dd and gzip to generate image files, which can thus be restored or mounted by tools other than this.

***This is Alpha Software***, untested, and entirely ***not reccommended for any use whatsoever***.

## Minimum Requirements (Client):

64mb RAM
500Mhz Processer
An external drive capable of supporting the size of the image file. This size will vary based on your system.

## Minimum Requirements (Server):

In this case, server simply means the computer you are using to generate the bootdisk from.

The exact Linux distribution is not restricted, but you need access to:

```
find
cpio
gzip
advdef
```

Most of these are already included in modern distributions.

On Debian, you need to install advancecomp:

```
apt-get install advancecomp
```

You also need a recent version of ```mkisofs```. 

Debian's ```genisoimage``` will not work. Debian users will probably have to build cdrtools from source.

## Creating balcc-restorer

At present, balcc-restorer contains a full TinyCoreLinux setup, with a few additions in /opt/bootlocal.sh, so that it can effectively utilised as a bootdisk.

To create the image file, which you can then burn to CD, or move to USB via a tool like [Rufus](https://github.com/pbatard/rufus), there are a few steps involved.

The steps below are for a Linux machine, preferably Debian.

It should be possible to accomplish something similar under Windows or Mac, but that is beyond this documentation.

*You must have met the Minimum Requirements (Server) first!*

```
git clone https://github.com/shakna-israel/balcc-restorer
cd balcc-restorer
./image.sh
```

NOTE: *sudo* is required, as some of the files contain system level permissions, which will remain the same once compiled and running.

This will have produced a balcc-restore.iso file that you can use to boot from.

*In future, compiled ISOs may be released.*

# License

Tiny Core Linux is covered by the [GPL v2 License](http://www.gnu.org/licenses/gpl-2.0.html). All custom code developed by Robert Shingledecker is therfore also covered by the same GPL v2 License. Any other software contained within, if not specifically stated would also fall under the same such license. 
