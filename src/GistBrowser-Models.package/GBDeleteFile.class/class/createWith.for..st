factory
createWith: aGistIDString for: aFilenameString
	^ self new
		gistID: aGistIDString;
		filename: aFilenameString;
		yourself