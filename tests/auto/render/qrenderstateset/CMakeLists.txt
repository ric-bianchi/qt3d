# Generated from qrenderstateset.pro.

#####################################################################
## tst_qrenderstateset Test:
#####################################################################

qt_add_test(tst_qrenderstateset
    SOURCES
        tst_qrenderstateset.cpp
    PUBLIC_LIBRARIES
        Qt::3DCore
        Qt::3DCorePrivate
        Qt::3DRender
        Qt::3DRenderPrivate
        Qt::CorePrivate
        Qt::Gui
)

#### Keys ignored in scope 1:.:.:qrenderstateset.pro:<TRUE>:
# TEMPLATE = "app"

## Scopes:
#####################################################################

include(../../core/common/common.cmake)
qt3d_setup_common_test(tst_qrenderstateset)
