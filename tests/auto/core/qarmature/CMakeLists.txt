# Generated from qarmature.pro.

#####################################################################
## tst_qarmature Test:
#####################################################################

qt_add_test(tst_qarmature
    SOURCES
        tst_qarmature.cpp
    INCLUDE_DIRECTORIES
        ../common
    PUBLIC_LIBRARIES
        Qt::3DCore
        Qt::3DCorePrivate
        Qt::CorePrivate
        Qt::Gui
)

#### Keys ignored in scope 1:.:.:qarmature.pro:<TRUE>:
# TEMPLATE = "app"

## Scopes:
#####################################################################

qt_extend_target(tst_qarmature CONDITION QT_FEATURE_private_tests
    SOURCES
        ../common/qbackendnodetester.cpp ../common/qbackendnodetester.h
        ../common/testarbiter.h
)
