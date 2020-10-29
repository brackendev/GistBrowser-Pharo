test
testCreateForWithContent
	self assert: test1 description equals: 'Description'.
	self assert: test1 filename equals: 'Filename'.
	self assert: test1 content equals: 'Content'.
	self deny: test1 public