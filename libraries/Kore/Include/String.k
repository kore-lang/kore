module Kore
	class string
		def erase(value as int) as string alias "_String_Erase"

		def length as int alias "_String_Length"

		def leftTrim as string alias "_String_LeftTrim"

		def get(index as int) as string alias "_String_Get"
		def value(index as int) as int alias "_String_Value"

		def isAlpha as bool alias "_String_IsAlpha"
		def isNumeric as bool alias "_String_IsNumeric"
		def isNull as bool alias "_String_IsNull"
      def isSpace as bool alias "_String_IsSpace"

		def upper as string alias "_String_Upper"
		def upperFirst as string alias "_String_UpperFirst"
		def lower as string alias "_String_Lower"
		
		def replace(search as string, replace as string) as string alias "_String_Replace"
		
		def lastSegment(separator as string) as string alias "_String_LastSegment"
		
		def indexOf(character as string) as int alias "_String_IndexOf"
		def lastIndexOf(character as string) as int alias "_String_LastIndexOf"
		
		def subString(start as int) as string alias "_String_SubString"
		def subString(start as int, count as int) as string alias "_String_FullSubString"
		
		self def newLine as string alias "_String_NewLine"
		self def empty as string alias "_String_Empty"
		
		def print
			Console.writeLine(this)
		end
	end
end