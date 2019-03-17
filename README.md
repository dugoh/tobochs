# tobochs

This is a failed attempt to do a fully automated reproducible build on a Travis CI Ubuntu Trusty box in one go using this guide http://gunkies.org/wiki/Installing_386BSD_on_BOCHS.

- At the time bochs froze up most of the time when downloading the full distribution.
- Bochs is slow and Travis only gives you about an hour.
- Qemu is faster but can't boot the original distribution without patching up the kernel.
- A full buildworld still takes too long.

The build is now spread over multiple repositories. See:

https://github.com/dugoh/386bsd0.1
