cmake_minimum_required(VERSION 3.5.0)

project(ursa VERSION 0.1.0 LANGUAGES CXX)

include(CTest)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Choose the type of build, options are: Debug Release RelWithDebInfo MinSizeRel." FORCE)
endif()

add_compile_options(
    -Wfatal-errors
#     -Wno-error=unknown-pragmas 
#     -Wno-unknown-pragmas       
)

include_directories("${PROJECT_SOURCE_DIR}/third-party/xilinx/hls/")

# ── Includes ────────────────────────────────────────────────
include_directories("${PROJECT_SOURCE_DIR}/third-party/xilinx/hls/")
include_directories("${PROJECT_SOURCE_DIR}/src")
include_directories("${PROJECT_SOURCE_DIR}/src/core")
include_directories("${PROJECT_SOURCE_DIR}/src/labft")
include_directories("${PROJECT_SOURCE_DIR}/src/im2col")
# include_directories("${PROJECT_SOURCE_DIR}/tb/simple_mxm")
include_directories("${PROJECT_SOURCE_DIR}/tb/cnn")
include_directories("${PROJECT_BINARY_DIR}")

# ── Fontes ──────────────────────────────────────────────────
file(GLOB CORE_SOURCES    CONFIGURE_DEPENDS "${PROJECT_SOURCE_DIR}/src/core/*.cpp")
file(GLOB LABFT_SOURCES   CONFIGURE_DEPENDS "${PROJECT_SOURCE_DIR}/src/labft/*.cpp")
file(GLOB IM2COL_SOURCES  CONFIGURE_DEPENDS "${PROJECT_SOURCE_DIR}/src/im2col/*.cpp")
# file(GLOB TB_SOURCES      CONFIGURE_DEPENDS "${PROJECT_SOURCE_DIR}/tb/simple_mxm/*.cpp")
file(GLOB TB_SOURCES      CONFIGURE_DEPENDS "${PROJECT_SOURCE_DIR}/tb/cnn/*.cpp")

set(SRC_SOURCES ${CORE_SOURCES} ${LABFT_SOURCES} ${IM2COL_SOURCES})

# ── Targets por SA_SIZE ─────────────────────────────────────
# SA_SIZE aqui sobrescreve o valor em settings.h via -D,
# permitindo testar múltiplos tamanhos sem editar o header.
set(SA_SIZES 8)

foreach(sa_size IN LISTS SA_SIZES)
    set(TARGET_NAME "ursa_${sa_size}x${sa_size}_tb")

    add_executable(${TARGET_NAME} ${SRC_SOURCES} ${TB_SOURCES})

    target_compile_definitions(${TARGET_NAME} PRIVATE SA_SIZE=${sa_size})

    target_compile_options(${TARGET_NAME} PRIVATE
        -Wno-error=bool-compare
        -Wno-bool-compare
    )

    add_test(NAME ${TARGET_NAME} COMMAND ${TARGET_NAME})
endforeach()
