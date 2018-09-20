
# Update
sudo apt-get update
sudo apt-get upgrade

# Install Package
sudo apt-get install build-essential 
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt-get install libgtk-3-dev
sudo apt-get install libatlas-base-dev gfortran pylint
sudo apt-get install python2.7-dev python3.5-dev

# Get source file
wget https://github.com/opencv/opencv/archive/3.4.0.zip -O opencv-3.4.0.zip
wget https://github.com/opencv/opencv_contrib/archive/3.4.0.zip -O opencv_contrib-3.4.0.zip

# unzip
sudo apt-get install unzip
unzip opencv-3.4.0.zip
unzip opencv_contrib-3.4.0.zip

# Build
cd  opencv-3.4.0
mkdir build
cd build

# cmake
cmake \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr/local \
        -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-3.4.0/modules \
        -DOPENCV_ENABLE_NONFREE=True \
        ..

# make
make -j4

# Install
sudo make install
sudo ldconfig
pkg-config --modversion opencv

# TEST
# g++ main.cpp -o main `pkg-config --cflags --libs opencv`

