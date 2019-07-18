public requesting
deleteGBDeleteFile: aGBDeleteFile completion: aCompletionBlock
	"https://developer.github.com/v3/gists/#edit-a-gist"

	| gbn response |
	gbn := self new.
	response := gbn
		gistsPATCH: 'https://api.github.com/gists/' , aGBDeleteFile gistID
		entity: (gbn jsonEntityBuilderFor: aGBDeleteFile asDictForAPI).

	aCompletionBlock
		value: response isSuccess
		value: (gbn findErrorMessageIn: response)