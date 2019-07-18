initialization
initialize
	super initialize.
	self
		label: 'Save';
		icon: (Smalltalk ui iconNamed: #glamorousSave);
		help: 'Save gist';
		action: [ self actionCreateGist ]