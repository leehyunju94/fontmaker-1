QT += core
QT -= gui

CONFIG += c++1z

TARGET = asio_practice
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

HEADERS += \
    server.hpp \
    connection.hpp \
    connection_manager.hpp \
    request_handler.hpp \
    mime_types.hpp \
    reply.hpp \
    header.hpp \
    request.hpp \
    request_parser.hpp

SOURCES += main.cpp \
    server.cpp \
    connection.cpp \
    connection_manager.cpp \
    request_handler.cpp \
    mime_types.cpp \
    reply.cpp \
    request_parser.cpp

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

 macx: LIBS += -L/usr/local/Cellar/boost/1.63.0/lib/ -lboost_filesystem
 macx: LIBS += -L/usr/local/Cellar/boost/1.63.0/lib/ -lboost_serialization
 macx: LIBS += -L/usr/local/Cellar/boost/1.63.0/lib/ -lboost_system

 INCLUDEPATH += /usr/local/include
 DEPENDPATH += /usr/local/include

 macx: LIBS += -L/usr/local/Cellar/openssl/1.0.2k/lib/ -lssl.1.0.0

 INCLUDEPATH += /usr/local/Cellar/openssl/1.0.2k/include
 DEPENDPATH += /usr/local/Cellar/openssl/1.0.2k/include

 INCLUDEPATH += /Users/yws/Documents/__library/asio/asio/include
 DEPENDPATH += /Users/yws/Documents/__library/asio/asio/include

