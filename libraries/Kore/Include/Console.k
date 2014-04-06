module Kore
	include "Kore_Console.lib"

	class Console
		self def write(string) alias "_Write"
		self def writeLine(string) alias "_WriteLine"

		self def write(bool) alias "_WriteBool"
		self def write(char) alias "_WriteChar"
		self def write(int) alias "_WriteInt"
		self def write(float) alias "_WriteFloat"

		self def next alias "_Console_Next"
		
		self def pause alias "_Pause"
	end
end