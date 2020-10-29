public
localGitHubPassword
	[ ^ (IceCredentialStore current
		plaintextCredentialForHostname: 'github.com') password
	]
		on: Exception
		do: [ ^ nil ]