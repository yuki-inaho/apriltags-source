@echo off

:: cleaning old builds
if exist build64\ rmdir /q/s build64

:: create build folder
mkdir build64

:: create build scripts with cmake
pushd build64
cmake -G "Visual Studio 15 2017 Win64" -DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=TRUE ..
popd

:: build target apriltag
cmake --build build64 --target apriltag --config MinSizeRel
