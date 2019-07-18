item creation
menuItemStarWith: anItem
	^ anItem
		name: nil;
		icon: (self starItemIconFilled: false);
		description: 'Star/unstar Gist';
		action: [ owner gistListPresenter selectedItem
				ifNotNil: [ owner announcingObject actionStarItem ]
			];
		yourself