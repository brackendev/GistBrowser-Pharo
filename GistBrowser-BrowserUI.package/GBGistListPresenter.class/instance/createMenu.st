helpers
createMenu
	^ MenuPresenter new
		addGroup:
			[ :group | 
			group
				addItem:
					[ :item | 
					item
						name: 'Copy URL';
						icon: (Smalltalk ui iconNamed: #smallCopy);
						enabled: [ self selectedItem notNil ];
						action: [ Clipboard clipboardText: (self selectedItem at: #html_url) ]
					]
			];
		buildWithSpecAsPopup