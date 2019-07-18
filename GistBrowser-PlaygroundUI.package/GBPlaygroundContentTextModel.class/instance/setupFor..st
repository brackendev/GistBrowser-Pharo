initialization
setupFor: anOwner
	anOwner announcingObject content
		whenChangedDo: [ :newValue | 
			newValue
				ifNil: [ self updateText: '' ]
				ifNotNil: [ self updateText: newValue ]
			]