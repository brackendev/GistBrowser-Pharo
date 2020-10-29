item creation
menuItemAddWith: anItem
	^ anItem
		name: nil;
		icon: (Smalltalk ui iconNamed: #add);
		description: 'Add a new Gist';
		action: [ owner announcingObject actionAddGistItem ];
		yourself