initialization
initialize
	super initialize.
	self
		addGroup: [ :group | 
			group
				addItem: [ :item | self menuItemRefreshWith: item ];
				addItem: [ :item | self menuItemAddWith: item ]
			];
		addGroup: [ :group | 
			group
				addItem: [ :item | self menuItemStarWith: item ];
				addItem: [ :item | self menuItemForkWith: item ];
				addItem: [ :item | self menuItemBrowserWith: item ];
				addItem: [ :item | self menuItemDeleteWith: item ]
			].

	owner announcingObject selectedStarred
		whenChangedDo: [ :newValue | 
			newValue
				ifNil: [ self updateStarItemIconWith: false ]
				ifNotNil: [ self updateStarItemIconWith: true ]
			]