# Generated from findrunningclipanimatorsjob.pro.

#####################################################################
## tst_findrunningclipanimatorsjob Test:
#####################################################################

qt_add_test(tst_findrunningclipanimatorsjob
    SOURCES
        tst_findrunningclipanimatorsjob.cpp
    INCLUDE_DIRECTORIES
        ../../core/common
    PUBLIC_LIBRARIES
        Qt::3DAnimation
        Qt::3DAnimationPrivate
        Qt::3DCore
        Qt::3DCorePrivate
        Qt::CorePrivate
        Qt::Gui
)

# Resources:
set(findrunningclipanimatorsjob_resource_files
    "clip1.json"
)

qt_add_resource(tst_findrunningclipanimatorsjob "findrunningclipanimatorsjob"
    PREFIX
        "/"
    FILES
        ${findrunningclipanimatorsjob_resource_files}
)


#### Keys ignored in scope 1:.:.:findrunningclipanimatorsjob.pro:<TRUE>:
# TEMPLATE = "app"

## Scopes:
#####################################################################

qt_extend_target(tst_findrunningclipanimatorsjob CONDITION QT_FEATURE_private_tests
    SOURCES
        ../../core/common/qbackendnodetester.cpp ../../core/common/qbackendnodetester.h
        ../../core/common/testarbiter.h
)
