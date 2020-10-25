initialization
initialize
	super initialize.
	
	self
		label: 'Private';
		help: 'Toggle Gist private/public. Can only be specified for new Gists'.

	owner announcingObject selectedGist
		whenChangedDo:
			[ :newValue | 
			newValue
				ifNil: [ self state: false ]
				ifNotNil: [ self state: (newValue at: #public) not ]
			]