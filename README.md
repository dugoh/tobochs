# tobochs
An attempt to redo http://gunkies.org/wiki/Installing_386BSD_on_BOCHS
The guide was made in 2010 for a manual install on an AWS Fedora Core 8 box.

This is an attempt to do a fully automated reproducible build on a Travis CI Ubuntu Trusty box.

See https://travis-ci.org/dugoh/tobochs for the latest attempt and
artifacts are pushed to https://dugoh.github.io/tobochs/

The build is hit and miss for now as Tiny 386BSD freezes up most of the time when downloading the full distribution.
Probably due to a threading issue with bochs or the Linux kernels in use.
This and other beef with bochs @ https://sourceforge.net/p/bochs/mailman/bochs-developers/?viewmonth=201608

Workaround is using a known good bochs revision, experimenting with different log levels now.
If all else fails bail and try to beat qemu into submission instead. A full rebuild of 386BSD is taking too long on bochs anyway. Well, too long for travis anyway.
