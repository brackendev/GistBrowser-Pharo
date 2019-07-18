test
testAsDictForAPI
	| innerInner inner outer |
	innerInner := Dictionary
		newFrom:
			{(#content -> test1 content asString withInternetLineEndings).
			(#filename -> test1 newFilename asString)}.
	inner := Dictionary newFrom: {(test1 filename -> innerInner)}.
	outer := Dictionary
		newFrom:
			{(#description -> test1 description asString).
			(#files -> inner)}.
	self assert: test1 asDictForAPI equals: outer