api - queries
actionAddFile
	| gist filename |
	gist := owner announcingObject selectedGist value.
	filename := owner filenameTextInputFieldPresenter text.

	((gist at: #owner) at: #login) ~= GBTools localGitHubUsername
		ifTrue: [ ^ GBTools alert: 'This is not your Gist.' ].

	owner contentTextModel getString isEmptyOrNil
		ifTrue: [ ^ GBTools alert: 'File content is required.' ].

	owner filenameTextInputFieldPresenter text isEmptyOrNil
		ifTrue: [ ^ GBTools alert: 'Filename is required.' ].

	(GBTools
		proceed: 'Are you sure you want to add this new file?'
		title: 'Save Gist')
		ifTrue: [ owner announcingObject
				saveGBAddFile:
					(GBAddFile
						createFor: (gist at: #id)
						with: filename
						content: owner contentTextModel getString)
			]