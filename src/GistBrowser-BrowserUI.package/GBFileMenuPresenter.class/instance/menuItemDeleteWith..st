item creation
menuItemDeleteWith: anItem
	^ anItem
		name: nil;
		icon: (Smalltalk ui iconNamed: #delete);
		description: 'Delete file';
		action: [ owner fileListPresenter selectedItem
				ifNotNil: [ owner fileListPresenter getList size = 1
						ifTrue: [ GBTools alert: 'You can''t delete this file, you need at least one file. Delete the Gist instead.' ]
						ifFalse: [ owner announcingObject actionDeleteFileItem ]
					]
			];
		yourself