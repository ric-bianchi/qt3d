# Generated from keyboardhandler.pro.

#####################################################################
## tst_keyboardhandler Test:
#####################################################################

qt_add_test(tst_keyboardhandler
    SOURCES
        ../commons/testdevice.h
        ../commons/testdeviceproxy.h
        tst_keyboardhandler.cpp
    INCLUDE_DIRECTORIES
        ../../core/common
        ../commons
    PUBLIC_LIBRARIES
        Qt::3DCore
        Qt::3DCorePrivate
        Qt::3DInput
        Qt::3DInputPrivate
        Qt::CorePrivate
        Qt::Gui
)

#### Keys ignored in scope 1:.:.:keyboardhandler.pro:<TRUE>:
# TEMPLATE = "app"

## Scopes:
#####################################################################

qt_extend_target(tst_keyboardhandler CONDITION QT_FEATURE_private_tests
    SOURCES
        ../../core/common/qbackendnodetester.cpp ../../core/common/qbackendnodetester.h
        ../../core/common/testarbiter.h
)
