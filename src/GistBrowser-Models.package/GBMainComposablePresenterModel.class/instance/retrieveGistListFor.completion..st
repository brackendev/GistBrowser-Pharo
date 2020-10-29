api - queries
retrieveGistListFor: aUsernameString completion: aCompletionBlock
	GBTools
		doAndBlockUI: [ GBNetwork
				retrieveUserGists: aUsernameString
				completion: [ :aGistList :error | 
					GBTools
						doWithHighPriority: [ aCompletionBlock value: aGistList value: error ]
					]
			]