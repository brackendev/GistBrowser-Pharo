api - queries
saveGBAddFile: aGBAddFile
	GBTools
		doAndBlockUI: [ GBNetwork
				addGBAddFile: aGBAddFile
				completion: [ :aGist :error | 
					GBTools
						doWithHighPriority: [ aGist
								ifNotNil: [ self refreshAll.
									self openNewBrowserIfNeeded
									].
							error ifNotNil: [ GBTools alert: error ]
							]
					]
			]