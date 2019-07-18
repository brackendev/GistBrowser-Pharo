factory
createWith: aDescriptionString filename: aFilenameString content: aContentString public: aPublicBoolean
	^ self new
		description: aDescriptionString;
		filename: aFilenameString;
		content: aContentString;
		public: aPublicBoolean;
		yourself