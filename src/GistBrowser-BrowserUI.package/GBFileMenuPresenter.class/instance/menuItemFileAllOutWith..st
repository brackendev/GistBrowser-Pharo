item creation
menuItemFileAllOutWith: anItem
	^ anItem
		name: nil;
		icon: (Smalltalk ui iconNamed: #smallExport);
		description: 'File all out';
		action: [ owner fileListPresenter getList
				ifNotEmpty: [ owner announcingObject actionFileAllOutItem ]
			];
		yourself