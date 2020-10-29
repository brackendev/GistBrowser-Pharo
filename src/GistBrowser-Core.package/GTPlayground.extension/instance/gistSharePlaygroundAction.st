*GistBrowser-Core
gistSharePlaygroundAction
	<pageAction>
	<pageActionOrder: 50>
	^ GLMGenericAction new
		action:
				[ :presentation | GistBrowser openForPlaygroundWith: self ];
		icon: (Smalltalk ui iconNamed: #github);
		title: 'Create GitHub Gist' translated