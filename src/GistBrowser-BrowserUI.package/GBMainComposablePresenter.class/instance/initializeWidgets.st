initialization
initializeWidgets
	saveButtonPresenter := self instantiate: GBSaveButtonPresenter.
	privateCheckBoxPresenter := self instantiate: GBPrivateCBPresenter.
	filenameTextInputFieldPresenter := self
		instantiate: GBFilenameTIFPresenter.
	descriptionTextInputFieldPresenter := self
		instantiate: GBDescriptionTIFPresenter.
	fileListPresenter := self instantiate: GBFileListPresenter.
	gistListPresenter := self instantiate: GBGistListPresenter.
	fileMenuPresenter := self instantiate: GBFileMenuPresenter.
	mainMenuPresenter := self instantiate: GBMainMenuPresenter.
	usernameTextInputFieldPresenter := self
		instantiate: GBUsernameTIFPresenter.
	avatarButtonPresenter := self instantiate: GBAvatarButtonPresenter.

	contentTextModel := GBContentTextModel new setupWith: self.
	contentTextMorph := GBContentTextMorph new
		model: contentTextModel;
		getSelectionSelector: #primarySelectionInterval;
		withGhostText: 'File content';
		withLineNumbers;
		beForSmalltalkScripting;
		yourself.
	announcingObject announcer
		when: GBAnnouncementContentFocus
		do: [ contentTextMorph takeKeyboardFocus ].
	contentTextAdapter := contentTextMorph
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		asSpecAdapter.

	self focusOrder
		add: gistListPresenter;
		add: fileListPresenter;
		add: contentTextMorph;
		add: descriptionTextInputFieldPresenter;
		add: filenameTextInputFieldPresenter.
		
	self whenBuiltDo: [ :aBlock | self windowWhenBuilt ]