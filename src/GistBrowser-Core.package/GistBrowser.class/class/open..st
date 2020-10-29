instance creation
open: aUsernameString
	^ self new
		openWithModel: (GBMainComposablePresenterModel for: aUsernameString)