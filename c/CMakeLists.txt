# Versione minima richiesta di CMake
cmake_minimum_required(VERSION 3.10)

# Nome del progetto
project(DataBase_Farmacia C)

include_directories(${CMAKE_SOURCE_DIR}/libpq/include)
link_directories(${CMAKE_SOURCE_DIR}/libpq/lib)

# Aggiungi i file sorgente
set(SOURCE_FILES
    main.c
    funzioni.c
)

# Aggiungi l'eseguibile
add_executable(db_farmacia ${SOURCE_FILES})

target_link_libraries(db_farmacia PRIVATE pq)