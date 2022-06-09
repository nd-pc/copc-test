macro(copy_files OUT_PATH)
	if(NOT EXISTS ${OUT_PATH})
		message(STATUS "Linking test files ${BaseFilePath} to ${OUT_PATH}")
		file(WRITE ${OUT_PATH}) # this will create any necessary pathes, as CREATE_LINK doesn't
		file(CREATE_LINK ${BaseFilePath} ${OUT_PATH})	
	endif()
endmacro()
