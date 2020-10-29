public requesting
isGistStarred: aGistIDString completion: aCompletionBlock
	"https://developer.github.com/v3/gists/#check-if-a-gist-is-starred"

	GBTools
		doWithBackgroundPriority: [ | response |
			response := (self new
				gistsGET: 'https://api.github.com/gists/' , aGistIDString , '/star')
				isSuccess.
			GBTools doWithHighPriority: [ aCompletionBlock value: response ]
			]