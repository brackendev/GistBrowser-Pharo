test
testAsDictForAPI
	| innerInner inner |
	innerInner := Dictionary
		newFrom:
			{(#content -> test1 content asString withInternetLineEndings).
			(#filename -> test1 filename)}.
	inner := Dictionary newFrom: {(test1 filename -> innerInner)}.
	self assert: (test1 asDictForAPI at: #files) equals: inner