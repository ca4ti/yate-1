include(../YateGlobal.pri)

TARGET = basemodules
TEMPLATE = lib

DESTDIR = ../build
OBJECTS_DIR = $${DESTDIR}/modules

# unix and (:) not mac
unix:!mac:DEFINES += HAVE_MALLINFO USE_TLS_METHOD
unix:mac:DEFINES += NO_AESCTR
INCLUDEPATH += .. ../libs/yrtp ../libs/ysip ../libs/ysdp ../libs/yiax ../libs/yjabber
mac:INCLUDEPATH += /opt/local/include
mac:LIBS += -L/opt/local/lib
LIBS += -lz -lssl -lcrypto
LIBS += -L$$DESTDIR -L$$DESTDIR/libs -lyate -lyrtp -lysip -lysdp -lyjabber -lyiax

SOURCES += cdrbuild.cpp \
            cdrcombine.cpp \
            cdrfile.cpp \
            regexroute.cpp \
            tonegen.cpp \
            tonedetect.cpp \
            wavefile.cpp \
            extmodule.cpp \
            conference.cpp \
            moh.cpp \
            dumbchan.cpp \
            callfork.cpp \
            mux.cpp \
            yrtpchan.cpp \
            ystunchan.cpp \
            ysipchan.cpp \
            yiaxchan.cpp \
            yjinglechan.cpp \
            ysockschan.cpp \
            filetransfer.cpp \
            fileinfo.cpp \
            client/jabberclient.cpp \
            callgen.cpp \
            analyzer.cpp \
            rmanager.cpp \
            msgsniff.cpp \
            enumroute.cpp \
            zlibcompress.cpp \
            openssl.cpp \
            # pbx.cpp \
