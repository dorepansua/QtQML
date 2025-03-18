cmake_minimum_required(VERSION 3.16)

project(Quick_Starter_Text_Input VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appQuick_Starter_Text_Input
    main.cpp
)

qt_add_qml_module(appQuick_Starter_Text_Input
    URI Quick_Starter_Text_Input
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES TLineEditV1.qml
        QML_FILES TLineEditV2.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appQuick_Starter_Text_Input PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appQuick_Starter_Text_Input
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQuick_Starter_Text_Input
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appQuick_Starter_Text_Input
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
