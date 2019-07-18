api - queries
gistsPUT: aURLString
	^ ZnClient new
		url: aURLString;
		beOneShot;
		setBasicAuthenticationUsername: GBTools localGitHubUsername
			password: GBTools localGitHubPassword;
		accept: ZnMimeType applicationJson;
		timeout: self class timeout;
		put;
		response