#!/bin/bash

set -xe

# Build prism and monocle libraries
pushd /tmp
mkdir work
cd work

   # libprism_es2_monocle.so
git clone https://github.com/XactMetal/openjfx-native-prism-es2
cd openjfx-native-prism-es2
git checkout binary
cp libprism_es2_monocle.so /usr/lib/jvm/java-8-openjdk-arm64/jre/lib/aarch64/libprism_es2_monocle.so
cd ..

   # libglass_monocle.so and jfxrt.jar
git clone https://github.com/XactMetal/libglass-monocle
cd libglass-monocle
git checkout toradex-binary
cp libglass_monocle.so /usr/lib/jvm/java-8-openjdk-arm64/jre/lib/aarch64/libglass_monocle.so
mv /usr/share/java/openjfx/jre/lib/ext/jfxrt.jar /tmp/jfxrt.jar
cd java
./inplaceModifyJfxrt.sh
cd ..
mv /tmp/jfxrt.jar /usr/share/java/openjfx/jre/lib/ext/jfxrt.jar
cd ..

cd ..
rm -R work/
popd

