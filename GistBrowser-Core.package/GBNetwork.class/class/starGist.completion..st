public requesting
starGist: aGistIDString completion: aCompletionBlock
	"https://developer.github.com/v3/gists/#star-a-gist"

	| gbn response |
	gbn := self new.
	response := gbn
		gistsPUT: 'https://api.github.com/gists/' , aGistIDString , '/star'.

	aCompletionBlock
		value: response isSuccess
		value: (gbn findErrorMessageIn: response)