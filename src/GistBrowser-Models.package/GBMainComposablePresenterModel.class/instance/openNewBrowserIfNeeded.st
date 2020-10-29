helpers
openNewBrowserIfNeeded
	self isUsernameLocalGitHubUsername
		ifFalse: [ GistBrowser open: GBTools localGitHubUsername ]