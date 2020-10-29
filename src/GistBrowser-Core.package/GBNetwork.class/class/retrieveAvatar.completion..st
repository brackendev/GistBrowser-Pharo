public requesting
retrieveAvatar: aURLString completion: aCompletionBlock
	[ | response |
	response := ZnEasy
		get: aURLString
		username: GBTools localGitHubUsername
		password: GBTools localGitHubPassword.
	aCompletionBlock
		value: (ImageReadWriter formFromStream: response contents readStream)
	]
		on: Exception
		do: [ :error | aCompletionBlock value: nil ]