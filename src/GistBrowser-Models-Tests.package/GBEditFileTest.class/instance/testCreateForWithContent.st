test
testCreateForWithContent
	self assert: test1 gistID equals: '123'.
	self assert: test1 description equals: 'Description'.
	self assert: test1 filename equals: 'Filename'.
	self assert: test1 content equals: 'Content'.
	self assert: test1 newFilename equals: 'New filename'