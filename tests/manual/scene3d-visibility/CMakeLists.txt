# Generated from scene3d-visibility.pro.

#####################################################################
## scene3d-visibility Binary:
#####################################################################

qt_add_manual_test(scene3d-visibility
    GUI
    SOURCES
        main.cpp
    PUBLIC_LIBRARIES
        Qt::3DInput
        Qt::Gui
        Qt::Qml
        Qt::Quick
)

# Resources:
set(scene3d-visibility_resource_files
    "main.qml"
)

qt_add_resource(scene3d-visibility "scene3d-visibility"
    PREFIX
        "/"
    FILES
        ${scene3d-visibility_resource_files}
)


#### Keys ignored in scope 1:.:.:scene3d-visibility.pro:<TRUE>:
# OTHER_FILES = "main.qml"
