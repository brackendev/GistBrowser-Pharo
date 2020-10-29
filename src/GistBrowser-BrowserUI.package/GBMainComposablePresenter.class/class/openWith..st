instance creation
openWith: aMainComposablePresenterModel
	| instance |
	instance := self
		on: aMainComposablePresenterModel.
		instance extent: 700 @ 500;
		askOkToClose: true;
		openWithSpec.
	instance window
		whenClosedDo: [ instance announcingObject windowIsClosing ]