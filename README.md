# Package sources for Beepy/Blepis software

How to compile the entirety of this repository yourself:

```bash
git clone --recursive https://github.com/HackModsOrg/beepy-ppa-source
cd beepy-ppa-source
./build.sh
```

## Internal

### Making a new release

For whoever might want to make a new package release, this is how to do it

```bash
git mv sharp-drm-1.5/ sharp-drm-2.0/
cd sharp-drm-2.0
cd module; git pull; cd .. # pulling upstream changes from the repo
dch # here's where you enter this package's changes and such
git add debian/ # add the dch-induced changes
cd ..
./build.sh # rebuilds everything incl. your new package
# do commit and push after you've tested the package!
git commit
git push
```

-----------

## Old instructions from [ardangelo repo](https://github.com/ardangelo/beepy-ppa-source/)

Run `dpkg-buildpackage -us -uc --host-arch armhf` in the package directory to generate a `deb` package

# Crosscompiling

```bash
sudo dpkg --add-architecture armhf
sudo apt-get install build-essential crossbuild-essential-armhf
cd <package_dir>
sudo apt-get build-dep -aarmhf .
```
