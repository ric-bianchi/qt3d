# Generated from audio-visualizer-qml.pro.

cmake_minimum_required(VERSION 3.14)
project(audio-visualizer-qml LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

set(INSTALL_EXAMPLEDIR "examples")

find_package(Qt6 COMPONENTS Core)
find_package(Qt6 COMPONENTS Gui)
find_package(Qt6 COMPONENTS Qml)
find_package(Qt6 COMPONENTS Quick)
find_package(Qt6 COMPONENTS Multimedia)

add_qt_gui_executable(audio-visualizer-qml
    main.cpp
    touchsettings.cpp touchsettings.h
)
target_link_libraries(audio-visualizer-qml PUBLIC
    Qt::3DCore
    Qt::3DQuick
    Qt::Core
    Qt::Gui
    Qt::Multimedia
    Qt::Qml
    Qt::Quick
)


# Resources:
set(audio-visualizer-qml_resource_files
    "BarEntity.qml"
    "Visualizer.qml"
    "images/albumcover.png"
    "images/demotitle.png"
    "images/normalmap.png"
    "images/pausehoverpressed.png"
    "images/pausenormal.png"
    "images/playhoverpressed.png"
    "images/playnormal.png"
    "images/songtitle.png"
    "images/stopdisabled.png"
    "images/stophoverpressed.png"
    "images/stopnormal.png"
    "main.qml"
    "meshes/circle.obj"
    "meshes/progressbar.obj"
    "music/tiltshifted_lost_neon_sun.mp3"
    "music/visualization.raw"
)

qt6_add_resources(audio-visualizer-qml "audio-visualizer-qml"
    PREFIX
        "/"
    FILES
        ${audio-visualizer-qml_resource_files}
)

install(TARGETS audio-visualizer-qml
    RUNTIME DESTINATION "${INSTALL_EXAMPLEDIR}"
    BUNDLE DESTINATION "${INSTALL_EXAMPLEDIR}"
    LIBRARY DESTINATION "${INSTALL_EXAMPLEDIR}"
)
