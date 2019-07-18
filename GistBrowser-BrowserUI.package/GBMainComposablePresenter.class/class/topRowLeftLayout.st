spec creation
topRowLeftLayout
	^ SpecRowLayout new
		add: #avatarButtonPresenter width: self toolbarHeight;
		add: #usernameTextInputFieldPresenter width: self buttonWidth * 1.5;
		add: #mainMenuPresenter;
			addSplitter;
		yourself