item creation
menuItemPlaygroundWith: anItem
	^ anItem
		name: nil;
						icon: (Smalltalk ui iconNamed: #workspace);
						description: 'Open file in a playground';
						action: [ owner fileListPresenter selectedItem
								ifNotNil: [ owner announcingObject actionPlaygroundItem ]
							];
		yourself