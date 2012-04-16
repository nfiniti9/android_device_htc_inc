M9 for the Droid Incredible

## Info

|||
|-----------------------------------:|:--------------------------|
|**Discussion thread**: | http://forum.xda-developers.com/showthread.php?t=1558923
|**Bug List**:		| https://docs.google.com/spreadsheet/ccc?key=0ArO-AoPZJh5KdHd4N3UxdzBObEtEbWViSVBaVlhVTFE#gid=0
|**Original build instructions**:|http://forum.xda-developers.com/showpost.php?p=23905364&postcount=2

## Building 

### Initialize
[setup linux/OS X](http://source.android.com/source/initializing.html) - Please note: it must be sun-java-6, not openjdk

### Prepare to download sources
```bash
mkdir ~/cm9
cd ~/cm9/
curl https://dl-ssl.google.com/dl/googlesource/git-repo/repo > ~/bin/repo
chmod a+x ~/bin/repo
repo init -u git://github.com/CyanogenMod/android.git -b ics
```

### Finish setting up repo
```bash
cd ~/cm9/.repo
curl -O https://github.com/drkhd/android_device_htc_inc/raw/ics/Manifest/local_manifest.xml
```

### Download the source
```bash
repo sync -j16
```
NOTE: This WILL take a long time.

### Build
```bash
cd ~/cm9
. build/envsetup.sh && brunch inc
```

