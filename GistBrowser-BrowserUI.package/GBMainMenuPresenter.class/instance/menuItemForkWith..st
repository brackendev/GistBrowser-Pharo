item creation
menuItemForkWith: anItem
	^ anItem
		name: nil;
						icon: GBIcons forkIcon;
						description: 'Fork Gist';
						action: [ owner gistListPresenter selectedItem
								ifNotNil: [ owner announcingObject actionForkItem ]
							];
		yourself