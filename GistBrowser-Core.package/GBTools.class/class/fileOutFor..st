file in/out
fileOutFor: aFile
	aFile
		ifNotNil: [ GBNetwork
				retrieveFileFrom: (aFile at: #raw_url)
				completion: [ :content | content ifNotNil: [ GBTools fileOut: (aFile at: #filename) content: content ] ]
			]