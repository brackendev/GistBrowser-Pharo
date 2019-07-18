public requesting
retrieveFiles: aGistIDString completion: aCompletionBlock
	self retrieveSingleGist: aGistIDString
		completion: [ :aGist :error | 
			aGist
				ifNil: [ aCompletionBlock value: Dictionary new value: error ]
				ifNotNil: [ | gists |
					gists := aGist
						at: #files
						ifPresent: [ aGist at: #files ]
						ifAbsent: [ Dictionary new ].

					aCompletionBlock value: gists value: error
					]
			]