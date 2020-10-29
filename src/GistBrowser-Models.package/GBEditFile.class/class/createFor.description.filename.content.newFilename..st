factory
createFor: aGistIDString description: aDescriptionString filename: aFilenameString content: aContentString newFilename: aNewFilenameString
	^ self new
		gistID: aGistIDString;
		description: aDescriptionString;
		filename: aFilenameString;
		content: aContentString;
		newFilename: aNewFilenameString;
		yourself