running
setUp
	super setUp.
	test1 := GBCreateGist
		createWith: 'Description'
		filename: 'Filename'
		content: 'Content'
		public: false