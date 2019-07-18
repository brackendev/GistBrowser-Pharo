converting
asDictForAPI
	| innerInner inner |
	innerInner := Dictionary
		newFrom: {(#content -> content asString withInternetLineEndings)}.
	inner := Dictionary newFrom: {(filename asString -> innerInner)}.
	^ Dictionary
		newFrom:
			{(#description -> description asString).
			(#public -> public).
			(#files -> inner)}