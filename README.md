# Device tree for Samsung Galaxy M31 M21 F41 A51

Lisenced Under [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)

## How to build
1. Set up the build environment 
2. Clone the device tree in the root of twrp source:
```
git clone -b main https://github.com/LMAO-armv8/device_samsung_m31_try.git device/samsung/$(DEVICE)
```
3. Adding
```
export TARGET_KERNEL_CONFIG=
export ANDROID_VERSION=
export DEVICE=
```
4. To build:
```
export ALLOW_MISSING_DEPENDENCIES=true && . build/envsetup.sh && lunch && make bacon 2>1 | tee log.txt
```
