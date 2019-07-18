api - queries
retrieveFullGistFor: aGistIDString completion: aCompletionBlock
	contentProcess ifNotNil: [ contentProcess terminate ].
	contentProcess := GBTools
		doWithBackgroundPriority: [ GBNetwork
				retrieveSingleGist: aGistIDString
				completion: [ :aGist :error | 
					GBTools
						doWithHighPriority: [ aCompletionBlock value: aGist value: error ]
					]
			]