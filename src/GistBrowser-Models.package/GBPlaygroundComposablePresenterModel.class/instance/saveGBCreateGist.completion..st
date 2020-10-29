event handling
saveGBCreateGist: aGBCreateGist completion: aCompletionBlock
	GBTools
		doAndBlockUI: [ GBNetwork
				createGBCreateGist: aGBCreateGist
				completion: [ :aGist :error | 
					GBTools
						doWithHighPriority: [ aGist
										ifNotNil: [ Clipboard clipboardText: (aGist at: #html_url).
											GBTools
												alert: 'Gist URL has been copied to the clipboard.'
											]. error
								ifNotNil: [ GBTools alert: error ].
							aCompletionBlock value
							]
					]
			]