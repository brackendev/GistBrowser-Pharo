baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'NeoJSON'
				with: [ spec repository: 'github://svenvc/NeoJSON:master/repository' ].
			spec
				baseline: 'ZincHTTPComponents'
				with: [ spec repository: 'github://svenvc/zinc:master/repository' ].
			spec package: 'GistBrowser-Core'.
			spec
				package: 'GistBrowser-Announcements'
				with: [ spec requires: #('GistBrowser-Core') ].
			spec
				package: 'GistBrowser-BrowserUI'
				with: [ spec requires: #('GistBrowser-Core') ].
			spec
				package: 'GistBrowser-Core-Tests'
				with: [ spec requires: #('GistBrowser-Core') ].
			spec
				package: 'GistBrowser-Models'
				with: [ spec requires: #('GistBrowser-Core') ].
			spec
				package: 'GistBrowser-Models-Tests'
				with: [ spec requires: #('GistBrowser-Core') ].
			spec
				package: 'GistBrowser-PlaygroundUI'
				with: [ spec requires: #('GistBrowser-Core') ]
			]