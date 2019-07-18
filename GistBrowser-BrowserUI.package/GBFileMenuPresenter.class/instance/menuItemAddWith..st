item creation
menuItemAddWith: anItem
	^ anItem
		name: nil;
						icon: (Smalltalk ui iconNamed: #add);
						description: 'Add a new file';
						action: [ owner fileListPresenter getList isNotEmpty
								ifTrue: [ owner announcingObject actionAddFileItem ]
							];
		yourself