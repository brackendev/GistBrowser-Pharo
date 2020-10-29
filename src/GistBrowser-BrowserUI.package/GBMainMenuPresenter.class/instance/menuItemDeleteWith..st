item creation
menuItemDeleteWith: anItem
	^ anItem
		name: nil;
						icon: (Smalltalk ui iconNamed: #delete);
						description: 'Delete Gist';
						action: [ owner gistListPresenter selectedItem
								ifNotNil: [ owner announcingObject actionDeleteGistItem ]
							];
		yourself