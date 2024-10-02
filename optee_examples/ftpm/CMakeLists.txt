project (optee_example_ftpm C)

set (SRC host/main.c)


# Compilazione della parte di host
add_executable (${PROJECT_NAME} ${SRC})

target_include_directories(${PROJECT_NAME}
			   PRIVATE ta/include
		           PRIVATE ta/lib
			   PRIVATE ta/TPMCmd/tpm/include
  			   PRIVATE ta/reference
			   PRIVATE ta/reference/include
			   PRIVATE include)

target_link_libraries (${PROJECT_NAME} PRIVATE teec)


install (TARGETS ${PROJECT_NAME} DESTINATION ${CMAKE_INSTALL_BINDIR})