helpers
afterFork
	(GBTools
				proceed: 'Gist has been forked. Do you want to view it now?'
				title: 'Delete File')
				ifTrue: [ GistBrowser open: GBTools localGitHubUsername ]