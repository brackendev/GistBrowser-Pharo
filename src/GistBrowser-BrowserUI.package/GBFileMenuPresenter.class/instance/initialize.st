initialization
initialize
	super initialize.
	
	self
		addGroup:
			[ :group | 
			group
				addItem: [ :item | self menuItemAddWith: item ];
				addItem: [ :item | self menuItemFileAllOutWith: item ]
			];
		addGroup:
			[ :group | 
			group
				addItem: [ :item | self menuItemPlaygroundWith: item ];
				addItem: [ :item | self menuItemFileOutWith: item ];
				addItem: [ :item | self menuItemDeleteWith: item ]
			]