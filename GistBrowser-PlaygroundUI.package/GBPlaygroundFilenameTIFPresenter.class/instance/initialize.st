initialization
initialize
	super initialize.
	self
		ghostText: 'Content filename';
		help: 'Content filename'.
	owner announcingObject playground title isEmptyOrNil
		ifTrue: [ self text: 'Playground.st' ]
		ifFalse: [ self text: owner announcingObject playground title , '.st' ]