#-------------------------------------------------
#
# Project created by QtCreator 2017-07-03T20:08:32
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = qtface
TEMPLATE = app
CONFIG += console c++11

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    face.cpp \
    database.cpp \
    camerathread.cpp

HEADERS += \
        mainwindow.h \
    face.h \
    database.h \
    camerathread.h


INCLUDEPATH += /usr/local/include \
                /usr/local/include/opencv \
                /usr/local/include/opencv2 \
                /home/lxg/codetest/SeetaFaceEngine/FaceDetection/include \
                /home/lxg/codetest/SeetaFaceEngine/FaceAlignment/include \
                /home/lxg/codetest/SeetaFaceEngine/FaceIdentification/include
#                /usr/include/x86_64-linux-gnu/qt5/QtCore \

path = /home/lxg/codedata/face/model/

LIBS += /usr/local/lib/libopencv_highgui.so \
        /usr/local/lib/libopencv_core.so    \
        /usr/local/lib/libopencv_imgproc.so
LIBS += -L$$path -lseeta_facedet_lib
LIBS += -L$$path -lseeta_fa_lib
LIBS += -L$$path -lviplnet
LIBS += -lsqlite3


FORMS += \
        mainwindow.ui
