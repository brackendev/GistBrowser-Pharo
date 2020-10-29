public requesting
forkGist: aGistIDString completion: aCompletionBlock
	"https://developer.github.com/v3/gists/#fork-a-gist"

	GBTools
		doWithBackgroundPriority: [ | gbn response |
			gbn := self new.
			response := gbn
				gistsPOST: 'https://api.github.com/gists/' , aGistIDString , '/fork'
				entity: nil.

			GBTools
				doWithHighPriority: [ aCompletionBlock
						value: response isSuccess
						value: (gbn findErrorMessageIn: response)
					]
			]