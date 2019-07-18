item creation
menuItemBrowserWith: anItem
	^ anItem
		name: nil;
						icon: (Smalltalk ui iconNamed: #remote);
						description: 'Open Gist in web browser';
						action: [ owner gistListPresenter selectedItem
								ifNotNil: [ owner announcingObject actionBrowserItem ]
							];
		yourself