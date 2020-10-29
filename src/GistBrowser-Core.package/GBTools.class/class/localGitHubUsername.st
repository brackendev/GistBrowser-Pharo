public
localGitHubUsername
	[ ^ (IceCredentialStore current plaintextCredentialForHostname: 'github.com') username
	]
		on: Exception
		do: [ ^ nil ]