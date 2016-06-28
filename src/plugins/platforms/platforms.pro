TEMPLATE = subdirs

android: SUBDIRS += android

!android: SUBDIRS += minimal

!android:if(!win32|contains(QT_CONFIG, freetype)): SUBDIRS += offscreen

contains(QT_CONFIG, xcb) {
    SUBDIRS += xcb
}

uikit: SUBDIRS += ios
osx: SUBDIRS += cocoa

win32:!winrt: SUBDIRS += windows
winrt: SUBDIRS += winrt

contains(QT_CONFIG, direct2d) {
    SUBDIRS += direct2d
}

qnx {
    SUBDIRS += qnx
}

contains(QT_CONFIG, eglfs) {
    SUBDIRS += eglfs
    SUBDIRS += minimalegl
}

contains(QT_CONFIG, directfb) {
    SUBDIRS += directfb
}

contains(QT_CONFIG, linuxfb): SUBDIRS += linuxfb

unix:!android:!darwin: SUBDIRS += vnc

freebsd {
    SUBDIRS += bsdfb
}

haiku {
    SUBDIRS += haiku
}

contains(QT_CONFIG, mirclient): SUBDIRS += mirclient

contains(QT_CONFIG, integrityfb): SUBDIRS += integrity
