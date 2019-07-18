spec creation
bottomRowLayout
	^ SpecRowLayout new
		add: #descriptionTextInputFieldPresenter;
		add: #filenameTextInputFieldPresenter width: self buttonWidth * 2.5;
		add: #privateCheckBoxPresenter width: self buttonWidth;
		add: #saveButtonPresenter width: self buttonWidth; yourself