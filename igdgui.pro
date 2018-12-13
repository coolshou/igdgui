QT       += gui
TARGET = igdgui
TEMPLATE = app

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

HEADERS = src/igdgui.h \
	src/igddevice.h \
	src/addportmapping.h \
	src/portmappingdetails.h
	
SOURCES = src/igdgui.cpp \
	src/main.cpp \
	src/igddevice.cpp \
	src/addportmapping.cpp \
	src/portmappingdetails.cpp
	
FORMS   = src/igdgui.ui \
	src/addportmapping.ui \
	src/portmappingdetails.ui

# install
target.path = igdgui
sources.files = $$SOURCES $$HEADERS $$RESOURCES $$FORMS *.pro
sources.path = .
INSTALLS += target sources
LIBS += -lminiupnpc
#CONFIG += debug
