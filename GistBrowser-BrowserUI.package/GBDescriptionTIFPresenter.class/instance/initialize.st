initialization
initialize
	super initialize.
	self
		ghostText: 'Gist description';
		help: 'Gist description'.

	owner announcingObject selectedGist
		whenChangedDo: [ :newValue | 
			newValue
				ifNil: [ self text: '' ]
				ifNotNil: [ self text: (newValue at: #description) ]
			]