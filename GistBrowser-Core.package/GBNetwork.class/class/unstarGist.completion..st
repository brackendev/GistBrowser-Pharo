public requesting
unstarGist: aGistIDString completion: aCompletionBlock
	"https://developer.github.com/v3/gists/#unstar-a-gist"

	| gbn response |
	gbn := self new.
	response := gbn
		gistsDELETE: 'https://api.github.com/gists/' , aGistIDString , '/star'.

	aCompletionBlock
		value: response isSuccess
		value: (gbn findErrorMessageIn: response)