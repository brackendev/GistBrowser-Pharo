item creation
menuItemRefreshWith: anItem
	^ anItem
		name: nil;
		icon: (Smalltalk ui iconNamed: #glamorousRefresh);
		description: 'Refresh Gists';
		action: [ owner announcingObject actionRefreshItem ];
		yourself