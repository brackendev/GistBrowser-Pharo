private factory
openForPlaygroundWith: aPlayground
	^ self new
		openWithPlaygroundModel: (GBPlaygroundComposablePresenterModel for: aPlayground)