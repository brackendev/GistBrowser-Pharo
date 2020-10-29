initialization
initialize
	super initialize.
	
	self
		ghostText: 'GitHub username';
		autoAccept: false;
		removeEntryCompletion;
		help: 'GitHub username';
		acceptBlock: [ :text | owner announcingObject acceptUsernameTextInputField: text ]