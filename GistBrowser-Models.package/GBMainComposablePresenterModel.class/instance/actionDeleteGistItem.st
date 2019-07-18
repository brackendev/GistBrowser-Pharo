event handling
actionDeleteGistItem
	selectedGist value ifNil: [ ^ self ].

	((selectedGist value at: #owner) at: #login)
		= GBTools localGitHubUsername
		ifFalse: [ ^ GBTools alert: 'You can''t delete someone else''s Gist.' ].

	(GBTools
		proceed: 'Are you sure you want to delete this Gist?'
		title: 'Delete Gist')
		ifTrue: [ GBTools
				doAndBlockUI: [ self
						deleteGistWith: (selectedGist value at: #id)
						completion: [ :success :error | 
							success
								ifTrue: [ self refreshAll ].
							error ifNotNil: [ GBTools alert: error ]
							]
					]
			]