initialization
initializeWidgets
	saveButtonPresenter := self
		instantiate: GBPlaygroundSaveButtonPresenter.
	privateCheckBoxPresenter := self
		instantiate: GBPlaygroundPrivateCBPresenter.
	filenameTextInputFieldPresenter := self
		instantiate: GBPlaygroundFilenameTIFPresenter.
	descriptionTextInputFieldPresenter := self
		instantiate: GBPlaygroundDescriptionTIFPresenter.

	contentTextModel := GBContentTextModel new.
	contentTextMorph := GBContentTextMorph new
		model: contentTextModel;
		getSelectionSelector: #primarySelectionInterval;
		withGhostText: 'File content';
		withLineNumbers;
		beForSmalltalkScripting;
		takeKeyboardFocus;
		yourself.
	contentTextAdapter := contentTextMorph
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		asSpecAdapter.

	self focusOrder
		add: contentTextMorph;
		add: descriptionTextInputFieldPresenter;
		add: filenameTextInputFieldPresenter.
		
	self whenBuiltDo: [ :aBlock | self windowWhenBuilt ]