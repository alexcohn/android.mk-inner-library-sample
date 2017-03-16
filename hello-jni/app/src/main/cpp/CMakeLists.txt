cmake_minimum_required(VERSION 3.4.1)

add_library( wrapper-lib
             STATIC
             IMPORTED )
set_target_properties( # Specifies the target library.
                       wrapper-lib

                       # Specifies the parameter you want to define.
                       PROPERTIES IMPORTED_LOCATION

                       # Provides the path to the library you want to import.
                       jniLibs/${ANDROID_ABI}/libWrapperLibrary.a )

add_library(hello-jni SHARED
            src/hello-jni.c)

# Include libraries needed for hello-jni lib
target_link_libraries(hello-jni
                      android
                      log)
