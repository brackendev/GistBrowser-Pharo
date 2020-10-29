public requesting
deleteGist: aGistIDString completion: aCompletionBlock
	"https://developer.github.com/v3/gists/#delete-a-gist"

	| gbn response |
			gbn := self new.
			response := gbn
				gistsDELETE: 'https://api.github.com/gists/' , aGistIDString.

			aCompletionBlock
						value: response isSuccess
						value: (gbn findErrorMessageIn: response)