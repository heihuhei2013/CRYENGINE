
#launcher
if (DURANGO)
	add_subdirectory("${CRYENGINE_DIR}/Code/Launcher/DurangoLauncher" "${CMAKE_BINARY_DIR}/Launcher/DurangoLauncher")
elseif (ORBIS)
	add_subdirectory("${CRYENGINE_DIR}/Code/Launcher/OrbisLauncher" "${CMAKE_BINARY_DIR}/Launcher/OrbisLauncher")
elseif (ANDROID)
	add_subdirectory("${CRYENGINE_DIR}/Code/Launcher/AndroidLauncher" "${CMAKE_BINARY_DIR}/Launcher/AndroidLauncher")
elseif (LINUX)
	add_subdirectory("${CRYENGINE_DIR}/Code/Launcher/LinuxLauncher" "${CMAKE_BINARY_DIR}/Launcher/LinuxLauncher")
elseif (WIN32)
	add_subdirectory("${CRYENGINE_DIR}/Code/Launcher/DedicatedLauncher" "${CMAKE_BINARY_DIR}/Launcher/DedicatedLauncher")
	add_subdirectory("${CRYENGINE_DIR}/Code/Launcher/WindowsLauncher" "${CMAKE_BINARY_DIR}/Launcher/WindowsLauncher")
endif ()
