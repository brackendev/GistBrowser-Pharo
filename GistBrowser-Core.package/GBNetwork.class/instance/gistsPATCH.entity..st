api - queries
gistsPATCH: aURLString entity: anEntity
	^ ZnClient new
		url: aURLString;
		beOneShot;
		setBasicAuthenticationUsername: GBTools localGitHubUsername
			password: GBTools localGitHubPassword;
		accept: ZnMimeType applicationJson;
		entity: anEntity;
		timeout: self class timeout;
		patch;
		response