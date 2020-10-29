test
testAsDictForAPI
	| innerInner inner outer |
	innerInner := Dictionary newFrom: {(#content -> test1 content asString withInternetLineEndings)}.
	inner := Dictionary newFrom: {(test1 filename -> innerInner)}.
	outer := Dictionary
		newFrom:
			{(#description -> test1 description asString).
			(#public -> test1 public).
			(#files -> inner)}.
	self assert: test1 asDictForAPI equals: outer