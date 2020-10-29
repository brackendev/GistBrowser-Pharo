api - queries
actionCreateGist
	owner contentTextModel getString isEmptyOrNil
		ifTrue: [ ^ GBTools alert: 'File content is required.' ].

	owner descriptionTextInputFieldPresenter text isEmptyOrNil
		ifTrue: [ ^ GBTools alert: 'Gist description is required.' ].

	owner filenameTextInputFieldPresenter text isEmptyOrNil
		ifTrue: [ ^ GBTools alert: 'Filename is required.' ].

	(GBTools
		proceed: 'Are you sure you want to save this Gist?'
		title: 'Save Gist')
		ifTrue:
			[
			owner announcingObject
				saveGBCreateGist:
					(GBCreateGist
						createWith: owner descriptionTextInputFieldPresenter text
						filename: owner filenameTextInputFieldPresenter text
						content: owner contentTextModel getString
						public: owner privateCheckBoxPresenter state not)
				completion: [ owner window close ]
			]