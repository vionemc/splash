#!/usr/bin/env bash
# XXX: if qt version is changed, Dockerfile should be updated,
# as well as qt-installer-noninteractive.qs script.

if [ -z ${DISPLAY+x} ]; then
	command="xvfb-run qt-everywhere-src-6.0.0"
else
	command="qt-everywhere-src-6.0.0"
fi

chmod +x "$1" && \
http_proxy="http://localhost:8080" https_proxy="http://localhost:8080" $command --script "$2" \
    | egrep -v '\[[0-9]+\] Warning: (Unsupported screen format)|((QPainter|QWidget))' && \
ls /opt
# ls /opt/qt-everywhere-src-6.0.0/ && \
# #    cat /opt/qt-$QT_SHORT_VERSION/InstallationLog.txt && \
# cat /opt/qt-everywhere-src-6.0.0/components.xml
