converting
asDictForAPI
	| innerInner inner |
	innerInner := Dictionary
		newFrom:
			{(#content -> content asString withInternetLineEndings).
			(#filename -> filename asString)}.
	inner := Dictionary newFrom: {(filename asString -> innerInner)}.
	
	^ Dictionary newFrom: {(#files -> inner)}