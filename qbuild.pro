TEMPLATE=app
TARGET=qtpairs

CONFIG+=qtopia
DEFINES+=QTOPIA

# I18n info
STRING_LANGUAGE=en_US
LANGUAGES=en_US

# Package info
pkg [
    name=qtpairs
    desc="Find pairs game"
    license=GPLv2
    version=1.0
    maintainer="giotti"
]

# Input files
#FORMS +=\

HEADERS=\
    TBlock.h\
    TGameBoard.h

SOURCES=\
    main.cpp\
    TBlock.cpp\
    TGameBoard.cpp

RESOURCES += qtpairs.qrc
TRANSLATIONS += translations/qtpairs_en.ts

QT += xml

# Install rules
target [
    hint=sxe
    domain=untrusted
]

desktop [
    hint=desktop
    files=qtpairs.desktop
    path=/apps/Games
]

pics [
    hint=pics
    files=pics/*
    path=/pics/qtpairs
]

