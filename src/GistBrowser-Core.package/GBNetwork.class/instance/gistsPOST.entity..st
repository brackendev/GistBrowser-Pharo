api - queries
gistsPOST: aURLString entity: anEntity
	^ ZnClient new
		url: aURLString;
		beOneShot;
		setBasicAuthenticationUsername: GBTools localGitHubUsername
			password: GBTools localGitHubPassword;
		accept: ZnMimeType applicationJson;
		entity: anEntity;
		timeout: self class timeout;
		post;
		response