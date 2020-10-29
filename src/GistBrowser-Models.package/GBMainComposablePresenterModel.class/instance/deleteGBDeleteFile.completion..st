api - queries
deleteGBDeleteFile: aGBDeleteFile completion: aCompletionBlock
	GBTools
		doAndBlockUI: [ GBNetwork
				deleteGBDeleteFile: aGBDeleteFile
				completion: [ :success :error | 
					GBTools doWithHighPriority: [ 
					aCompletionBlock value: success value: error
					]
			]]