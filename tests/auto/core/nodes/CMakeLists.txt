# Generated from nodes.pro.

#####################################################################
## tst_nodes Test:
#####################################################################

qt_add_test(tst_nodes
    SOURCES
        tst_nodes.cpp
    INCLUDE_DIRECTORIES
        ../common
    PUBLIC_LIBRARIES
        Qt::3DCore
        Qt::3DCorePrivate
        Qt::CorePrivate
        Qt::Gui
)

#### Keys ignored in scope 1:.:.:nodes.pro:<TRUE>:
# TEMPLATE = "app"

## Scopes:
#####################################################################

qt_extend_target(tst_nodes CONDITION QT_FEATURE_private_tests
    SOURCES
        ../common/qbackendnodetester.cpp ../common/qbackendnodetester.h
        ../common/testarbiter.h
)
