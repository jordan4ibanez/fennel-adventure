sudo apt install libglew-dev libglfw3-dev

git clone https://github.com/stetre/moongl
cd moongl
make
sudo make install # or 'sudo make install' (Ubuntu and MacOS)
cd ..

git clone https://github.com/stetre/moonglfw
cd moonglfw
make
sudo make install # or 'sudo make install' (Ubuntu and MacOS)
cd ..

git clone https://github.com/stetre/moonglmath
cd moonglmath
make
sudo make install # or 'sudo make install' (Ubuntu)
