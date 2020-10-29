event handling
actionPlaygroundItem
	selectedFile value
		ifNotNil: [ (selectedFile value at: #content)
				ifNotNil: [ GBTools
						openPlaygroundWith: (selectedFile value at: #content)
						label: (selectedFile value at: #filename)
					]
			]