# to compile povray #
cd unix/
./prebuild.sh

cd ..
mkdir build
cd build
../configure COMPILED_BY="your name <email@address>"
make -j8

# to run an app #
povray povray.ini
