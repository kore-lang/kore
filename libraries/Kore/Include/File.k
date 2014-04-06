module Kore
	include "Kore_File.lib"

	enum FileMode
		Read = 1
		Write = 2
	end

	class File
        	def new(fileName as string, mode as FileMode) alias "_File_New"
	
	        def close alias "_File_Close"

        	def readInt as int alias "_File_ReadInt"
        	def readByte as byte alias "_File_ReadByte"
        	def readString as string alias "_File_ReadString"
        	def readBool as bool alias "_File_ReadBool"

       	 	def write(value as bool) alias "_File_WriteBool"
        	def write(value as int) alias "_File_WriteInt"
        	def write(value as byte) alias "_File_WriteByte"
        	def write(value as string) alias "_File_WriteString"

			def eof as bool alias "_File_EOF"
	end
end