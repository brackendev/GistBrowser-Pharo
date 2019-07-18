instance creation
openWith: aPlaygroundComposablePresenterModel
	| instance |
	instance := self on: aPlaygroundComposablePresenterModel.
	instance extent: 600 @ 400;
	askOkToClose: false;
	openWithSpec