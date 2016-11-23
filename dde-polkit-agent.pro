TARGET = dde-polkit-agent
TEMPLATE = app
QT = core gui widgets dbus
CONFIG += link_pkgconfig
PKGCONFIG += dtkbase dtkwidget polkit-qt5-1

DBUS_ADAPTORS += com.deepin.Polkit1AuthAgent.xml

SOURCES += policykitlistener.cpp \
    AuthDialog.cpp \
    main.cpp \
    errortooltip.cpp

HEADERS += policykitlistener.h \
    AuthDialog.h \
    errortooltip.h

RESOURCES += images.qrc

DISTFILES += com.deepin.Polkit1AuthAgent.xml \
    polkit-dde-authentication-agent-1.desktop

target.path = /usr/lib/polkit-1-dde

desktop.path = /etc/xdg/autostart/
desktop.files += polkit-dde-authentication-agent-1.desktop

INSTALLS += target desktop
