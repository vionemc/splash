#!/usr/bin/env sh

URL="http://download.qt.io/official_releases/qt/$QT_SHORT_VERSION/$QT_FULL_VERSION/qt-opensource-linux-x64-$QT_FULL_VERSION.run"
URL="http://download.qt.io/official_releases/qt/6.0/6.0.0/single/qt-everywhere-src-6.0.0.tar.xz"
curl --fail -L -o "$1" ${URL}
