initialization
initialize
	super initialize.

	self
		whenSelectedItemChanged: [ :item | owner announcingObject fileListSelectedItemChanged: item ];
		menu: [ self createMenu ].

	owner announcingObject selectedFile
		whenChangedDo: [ :newValue |
			newValue ifNil: [ self setSelectedIndex: 0 ] ].

	owner announcingObject selectedGist
		whenChangedDo:
			[ :newValue | 
			newValue
				ifNil:
					[ self items: OrderedCollection new.
					self setSelectedIndex: 0
					]
				ifNotNil:
					[ self items: (newValue at: #files).
					self listItems ifNotEmpty: [ self setSelectedIndex: 1 ]
					]
			]