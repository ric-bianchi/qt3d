# Generated from qbuffer.pro.

#####################################################################
## tst_qbuffer Test:
#####################################################################

qt_add_test(tst_qbuffer
    SOURCES
        tst_qbuffer.cpp
    PUBLIC_LIBRARIES
        Qt::3DCore
        Qt::3DCorePrivate
        Qt::3DRender
        Qt::3DRenderPrivate
        Qt::CorePrivate
        Qt::Gui
)

#### Keys ignored in scope 1:.:.:qbuffer.pro:<TRUE>:
# TEMPLATE = "app"

## Scopes:
#####################################################################

include(../commons/commons.cmake)
qt3d_setup_common_render_test(tst_qbuffer)
