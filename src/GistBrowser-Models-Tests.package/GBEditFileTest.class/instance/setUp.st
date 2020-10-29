running
setUp
	super setUp.
	test1 := GBEditFile
		createFor: '123'
		description: 'Description'
		filename: 'Filename'
		content: 'Content'
		newFilename: 'New filename'