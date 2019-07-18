converting
asDictForAPI
	| inner |
	inner := Dictionary newFrom: {(filename  asString -> nil)}.
	^ Dictionary newFrom: {(#files -> inner)}