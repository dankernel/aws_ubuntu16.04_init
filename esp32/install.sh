
TOOLCHAIN='xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz'
ESP32_PATH=~/esp32
IDF_PATH=~/esp32/esp-idf

# Per install
sudo apt-get install gcc git wget make libncurses-dev flex bison gperf python python-pip python-setuptools python-serial python-cryptography python-future

# Toolchain
wget https://dl.espressif.com/dl/$TOOLCHAIN
mkdir -p $ESP32_PATH
tar -xzf $TOOLCHAIN -C ${ESP32_PATH}

echo '[OK] Installed ESP32 Toolchain'
echo 'export PATH="$HOME/esp/xtensa-esp32-elf/bin:$PATH"' >> ~/.bashrc
echo '. ~/.bachrc'

# End
rm $TOOLCHAIN

cd $ESP32_PATH
git clone --recursive https://github.com/espressif/esp-idf.git
echo '[OK] Installed ESP32 IDF'
echo 'export IDF_PATH=~/esp/esp-idf' >> ~/.bashrc
echo '. ~/.bachrc'

echo 'Make conda envs and Run install2.sh'
