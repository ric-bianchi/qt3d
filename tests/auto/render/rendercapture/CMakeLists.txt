# Generated from rendercapture.pro.

#####################################################################
## rendercapture Test:
#####################################################################

qt_add_test(tst_rendercapture
    SOURCES
        tst_rendercapture.cpp
    PUBLIC_LIBRARIES
        Qt::3DCore
        Qt::3DCorePrivate
        Qt::3DRender
        Qt::3DRenderPrivate
        Qt::CorePrivate
        Qt::Gui
)

#### Keys ignored in scope 1:.:.:rendercapture.pro:<TRUE>:
# TEMPLATE = "app"

## Scopes:
#####################################################################

include(../commons/commons.cmake)
qt3d_setup_common_render_test(tst_rendercapture)
