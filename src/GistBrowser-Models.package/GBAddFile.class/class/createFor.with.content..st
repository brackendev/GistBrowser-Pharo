factory
createFor: aGistIDString with: aFilenameString content: aContentString
	^ self new
		gistID: aGistIDString;
		filename: aFilenameString;
		content: aContentString; yourself