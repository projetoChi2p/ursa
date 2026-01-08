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

include_directories("${PROJECT_SOURCE_DIR}/../../../third-party/xilinx/hls/")

include_directories("${PROJECT_SOURCE_DIR}/src") 
include_directories("${PROJECT_SOURCE_DIR}/tb") 
include_directories("${PROJECT_BINARY_DIR}")

# Coleta fontes
file(GLOB SRC_SOURCES CONFIGURE_DEPENDS "${PROJECT_SOURCE_DIR}/src/*.cpp")
file(GLOB TB_SOURCES CONFIGURE_DEPENDS "${PROJECT_SOURCE_DIR}/tb/*.cpp")


# Several SA_SIZE

set(SA_SIZES 8)

foreach(sa_size IN LISTS SA_SIZES)

  # Cria um nome de executável baseado no tamanho
  set(TARGET_NAME "ursa_${sa_size}x${sa_size}_tb")

  # Cria o executável
  add_executable(${TARGET_NAME} ${SRC_SOURCES} ${TB_SOURCES})

  # Define o valor de SA_SIZE como macro para o código C++
  target_compile_definitions(${TARGET_NAME} PRIVATE SA_SIZE=${sa_size})

  # (Opcional) Define flags extras de compilação, se necessário
  target_compile_options(${TARGET_NAME} PRIVATE
    -Wno-error=bool-compare
    -Wno-bool-compare
  )

  # (Opcional) Adiciona como teste CTest
  add_test(NAME ${TARGET_NAME} COMMAND ${TARGET_NAME})

endforeach()



# Only SA_SIZE (old)
# # Juntos todos os fontes
# set(ALL_SOURCES ${SRC_SOURCES} ${TB_SOURCES})

# # Debug: mostra o que foi coletado
# message(STATUS "Fontes src: ${SRC_SOURCES}")
# message(STATUS "Fontes tb: ${TB_SOURCES}")

# # Gera executável
# add_executable(ursa_tb ${ALL_SOURCES})
