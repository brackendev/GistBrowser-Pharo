api - queries
saveGBCreateGist: aGBCreateGist
	GBTools
		doAndBlockUI: [ GBNetwork
				createGBCreateGist: aGBCreateGist
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