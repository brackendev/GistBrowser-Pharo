api - queries
deleteGistWith: aGistIDString completion: aCompletionBlock
GBTools doAndBlockUI: [ 
	GBNetwork
		deleteGist: aGistIDString
		completion: [ :success :error | GBTools doWithHighPriority: [ aCompletionBlock value: success value: error ]
		]]