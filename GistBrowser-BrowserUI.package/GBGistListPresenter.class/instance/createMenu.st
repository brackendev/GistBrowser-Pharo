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
					];
				addItem:
					[ :item | 
					item
						name: 'Copy Gist Press URL';
						icon: (Smalltalk ui iconNamed: #smallCopy);
						enabled: [ self selectedItem notNil ];
						action: [ Clipboard clipboardText: ('https://gist-press.com/', (self selectedItem at: #id)) ]
					];
				addItem:
					[ :item | 
					item
						name: 'Inspect it';
						icon: (Smalltalk ui iconNamed: #smallInspectIt);
						enabled: [ self selectedItem notNil ];
						action: [ self selectedItem inspect ]
					]
			];
		buildWithSpecAsPopup