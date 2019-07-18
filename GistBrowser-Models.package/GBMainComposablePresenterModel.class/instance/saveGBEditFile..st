api - queries
saveGBEditFile: aGBEditFile
	GBTools
		doAndBlockUI: [ GBNetwork
				editGBEditFile: aGBEditFile
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