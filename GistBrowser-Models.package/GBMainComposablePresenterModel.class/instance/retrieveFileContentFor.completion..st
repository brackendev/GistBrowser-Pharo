api - queries
retrieveFileContentFor: aFile completion: aCompletionBlock
	contentProcess ifNotNil: [ contentProcess terminate ].
	contentProcess := GBTools
		doWithBackgroundPriority: [ GBNetwork
				retrieveFileFrom: (aFile at: #raw_url)
				completion:
					[ :content | GBTools doWithHighPriority: [ aCompletionBlock value: content ] ]
			]