# Generated from renderer.pro.

#####################################################################
## tst_renderer Test:
#####################################################################

qt_add_test(tst_renderer
    SOURCES
        tst_renderer.cpp
)

#### Keys ignored in scope 1:.:.:renderer.pro:<TRUE>:
# TEMPLATE = "app"

## Scopes:
#####################################################################

include(../../commons/commons.cmake)
qt3d_setup_common_render_test(tst_renderer USE_TEST_ASPECT)
include(${PROJECT_SOURCE_DIR}/src/plugins/renderers/opengl/opengl.cmake)
qt3d_setup_opengl_renderer_target(tst_renderer)

qt_extend_target(tst_renderer CONDITION gcov
    COMPILE_OPTIONS
        -fprofile-arcs
        -ftest-coverage
    LINK_OPTIONS
        "-fprofile-arcs"
        "-ftest-coverage"
)

qt_extend_target(tst_renderer CONDITION useCommonTestAspect
    SOURCES
        ../../commons/testaspect.cpp ../../commons/testaspect.h
)
