api - queries
gistsGET: aURLString uiMessage: aString
	UIManager default
		informUserDuring: [ :bar | 
			bar label: aString.
			[ ^ ZnClient new
				url: aURLString;
				beOneShot;
				setBasicAuthenticationUsername: GBTools localGitHubUsername
					password: GBTools localGitHubPassword;
				accept: ZnMimeType applicationJson;
				timeout: self class timeout;
				get;
				response
			]
				on: HTTPProgress
				do: [ :progress | 
					progress resume
					]
			]