helpers
createMenu
	^ MenuPresenter new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Copy URL';
						icon: (Smalltalk ui iconNamed: #smallCopy);
						enabled: [ self selectedItem isNotNil ];
						action:
								[ Clipboard clipboardText: (self selectedItem at: #raw_url) ]
					];
				addItem: [ :item | 
					item
						name: 'Inspect it';
						icon: (Smalltalk ui iconNamed: #smallInspectIt);
						enabled: [ self selectedItem isNotNil ];
						action: [ self selectedItem inspect ]
					]
			];
		buildWithSpecAsPopup