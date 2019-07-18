api - queries
actionEditFile
	| gist description filename |
	gist := owner announcingObject selectedGist value.

	((gist at: #owner) at: #login) ~= GBTools localGitHubUsername
		ifTrue: [ ^ GBTools alert: 'This is not your Gist.' ].

	owner contentTextModel getString isEmptyOrNil
		ifTrue: [ ^ GBTools alert: 'File content is required.' ].

	description := owner descriptionTextInputFieldPresenter text
		isEmptyOrNil
		ifTrue: [ owner contentTextModel gist at: #description ]
		ifFalse: [ owner descriptionTextInputFieldPresenter text ].

	filename := owner filenameTextInputFieldPresenter text isEmptyOrNil
		ifTrue: [ owner fileListPresenter selectedItem at: #filename ]
		ifFalse: [ owner filenameTextInputFieldPresenter text ].

	(GBTools
		proceed: 'Are you sure you want to edit this file?'
		title: 'Save Gist')
		ifTrue: [ owner announcingObject
				saveGBEditFile:
					(GBEditFile
						createFor: (gist at: #id)
						description: description
						filename: (owner fileListPresenter selectedItem at: #filename)
						content: owner contentTextModel getString
						newFilename: filename)
			]