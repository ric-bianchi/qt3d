# Generated from qgeometry.pro.

#####################################################################
## tst_qgeometry Test:
#####################################################################

qt_add_test(tst_qgeometry
    SOURCES
        tst_qgeometry.cpp
    PUBLIC_LIBRARIES
        Qt::3DCore
        Qt::3DCorePrivate
        Qt::3DRender
        Qt::3DRenderPrivate
        Qt::CorePrivate
        Qt::Gui
)

#### Keys ignored in scope 1:.:.:qgeometry.pro:<TRUE>:
# TEMPLATE = "app"

## Scopes:
#####################################################################

include(../commons/commons.cmake)
qt3d_setup_common_render_test(tst_qgeometry)
