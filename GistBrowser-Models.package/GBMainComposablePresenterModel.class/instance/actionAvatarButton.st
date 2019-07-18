event handling
actionAvatarButton
	username value
		ifNotNil: [ GBTools
				openWebBrowserFor: 'https://github.com/', username value
			]