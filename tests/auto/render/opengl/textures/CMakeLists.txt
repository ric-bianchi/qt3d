# Generated from textures.pro.

#####################################################################
## tst_textures Test:
#####################################################################

qt_add_test(tst_textures
    SOURCES
        tst_textures.cpp
)

#### Keys ignored in scope 1:.:.:textures.pro:<TRUE>:
# TEMPLATE = "app"

## Scopes:
#####################################################################

include(../../commons/commons.cmake)
qt3d_setup_common_render_test(tst_textures USE_TEST_ASPECT)
include(${PROJECT_SOURCE_DIR}/src/plugins/renderers/opengl/opengl.cmake)
qt3d_setup_opengl_renderer_target(tst_textures)

qt_extend_target(tst_textures CONDITION gcov
    COMPILE_OPTIONS
        -fprofile-arcs
        -ftest-coverage
    LINK_OPTIONS
        "-fprofile-arcs"
        "-ftest-coverage"
)
