module Kore
	include "Kore_Directory.lib"
	
	class Directory
		self def current as string alias "_Directory_GetCurrent"
		//self def current = value as string alias "_Directory_SetCurrent"
		self def setCurrent(path as string) alias "_Directory_SetCurrent"
		
		self def files as string() alias "_Directory_GetFiles"
		self def files(extension as string) as string() alias "_Directory_GetFilesByExtension"
		self def files(path as string, extension as string) as string() alias "_Directory_GetFilesByFolderAndPattern"
		
		self def exists(path as string) as bool alias "_Directory_Exists"
	end
end