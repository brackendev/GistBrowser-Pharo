private
updateText: aString
	[ self setInitialText: aString ]
		on: Exception
		do: [ :error | error inspect ]