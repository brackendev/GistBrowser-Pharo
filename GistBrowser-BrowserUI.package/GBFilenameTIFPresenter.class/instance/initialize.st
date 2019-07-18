initialization
initialize
	super initialize.
	self
		ghostText: 'Content filename';
		help: 'Content filename'.

	owner announcingObject selectedFile
		whenChangedDo: [ :newValue | 
			newValue
						ifNil: [ self text: '' ]
		ifNotNil:
			[ (newValue at: #filename) ifNotNil: [ self text: (newValue at: #filename) ] ]
			].
	owner announcingObject announcer
		when: GBAnnouncementFilenameFocus
		do: [ self takeKeyboardFocus ]