api - queries
forkGistWith: aGistIDString completion: aCompletionBlock
	GBTools
		doAndBlockUI: [ GBNetwork
				forkGist: aGistIDString
				completion: [ :success :error | 
					GBTools
						doWithHighPriority: [ aCompletionBlock value: success value: error ]
					]
			]