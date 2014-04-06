module Kore
	include "Kore_Process.lib"
	
	class Process
		def new(fileName as string) alias "_Process_New"
		def new(fileName as string, directory as string) alias "_Process_NewWithDirectory"
		def execute(commandLine as string) alias "_Process_Execute"
	end
end