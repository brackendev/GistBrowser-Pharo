public requesting
retrieveSingleGist: aGistIDString completion: aCompletionBlock
	"https://developer.github.com/v3/gists/#get-a-single-gist"

	GBTools
		doWithBackgroundPriority: [ | gbn response dict error |
			gbn := self new.
			response := gbn
				gistsGET: 'https://api.github.com/gists/' , aGistIDString.

			dict := response isSuccess
				ifTrue: [ gbn jsonDeserializeStreamFrom: response entity string readStream ]
				ifFalse: [ nil ].
			error := (gbn findErrorMessageIn: response).

			GBTools
				doWithHighPriority: [ aCompletionBlock
						value: dict
						value: error ]
			]