converting
asDictForAPI
	| innerInner inner |
	innerInner := Dictionary
		newFrom:
			{(#content -> content asString withInternetLineEndings).
			(#filename -> newFilename asString)}.
	inner := Dictionary newFrom: {(filename asString -> innerInner)}.
	
	^ Dictionary
		newFrom:
			{(#description -> description asString).
			(#files -> inner)}