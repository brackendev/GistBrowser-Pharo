event handling
actionForkItem
	selectedGist value ifNil: [ ^ self ].

	((selectedGist value at: #owner) at: #login)
		= GBTools localGitHubUsername
		ifTrue: [ ^ GBTools alert: 'You can''t fork your own Gist.' ].

	(GBTools
		proceed: 'Are you sure you want to fork this Gist?'
		title: 'Fork Gist')
		ifTrue: [ self
				forkGistWith: (selectedGist value at: #id)
				completion: [ :success :error | 
					success
						ifTrue: [ self afterFork ].
					error ifNotNil: [ GBTools alert: error ]
					]
			]