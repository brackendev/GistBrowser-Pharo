item creation
menuItemFileOutWith: anItem
	^ anItem
		name: nil;
						icon: (Smalltalk ui iconNamed: #smallExport);
						description: 'File out';
						action: [ owner fileListPresenter selectedItem
								ifNotNil: [ owner announcingObject actionFileOutItem ]
							];
		yourself