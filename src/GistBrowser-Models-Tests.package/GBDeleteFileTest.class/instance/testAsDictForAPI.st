test
testAsDictForAPI
	| inner outer |
	inner := Dictionary newFrom: {(test1 filename -> nil)}.
	outer := Dictionary
		newFrom:
			{(#files -> inner)}.
	self assert: test1 asDictForAPI equals: outer