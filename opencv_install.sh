cd  /home/pi
mkdir opencv
cd  opencv

wget https://github.com/opencv/opencv/archive/3.4.0.zip -O opencv_source.zip
wget https://github.com/opencv/opencv_contrib/archive/3.4.0.zip -O opencv_contrib.zip
unzip opencv_source.zip
unzip opencv_contrib.zip

rm opencv_source.zip
rm opencv_contrib.zip

cd /home/pi/opencv/opencv-3.4.0
mkdir build
cd build



cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D INSTALL_C_EXAMPLES=OFF \
      -D INSTALL_PYTHON_EXAMPLES=ON \
      -D OPENCV_EXTRA_MODULES_PATH=/home/pi/opencv/opencv_contrib-3.4.0/modules \
      -D BUILD_EXAMPLES=ON \
      -D BUILD_DOCS=ON \
      -D ENABLE_NEON=ON ..