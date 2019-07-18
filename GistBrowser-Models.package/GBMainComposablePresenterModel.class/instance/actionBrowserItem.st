event handling
actionBrowserItem
	(self selectedGist)
		ifNotNil: [ GBTools openWebBrowserFor: ((self selectedGist) value at: #html_url) ]