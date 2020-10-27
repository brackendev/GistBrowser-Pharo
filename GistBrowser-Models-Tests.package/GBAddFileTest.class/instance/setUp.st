running
setUp
	super setUp.
	test1 := GBAddFile
		createFor: '123'
		with: 'Filename'
		content: 'Content'