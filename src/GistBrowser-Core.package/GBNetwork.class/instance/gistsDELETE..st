api - queries
gistsDELETE: aURLString
	^ ZnClient new
		url: aURLString;
		beOneShot;
		setBasicAuthenticationUsername: GBTools localGitHubUsername
			password: GBTools localGitHubPassword;
		accept: ZnMimeType applicationJson;
		timeout: self class timeout;
		delete;
		response