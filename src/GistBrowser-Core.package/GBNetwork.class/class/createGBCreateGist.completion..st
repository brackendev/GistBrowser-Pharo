public requesting
createGBCreateGist: aGBCreateGist completion: aCompletionBlock
	"https://developer.github.com/v3/gists/#create-a-gist"

	| gbn response dict error |
	gbn := self new.
	response := gbn
		gistsPOST: 'https://api.github.com/gists'
		entity: (gbn jsonEntityBuilderFor: aGBCreateGist asDictForAPI).

	dict := response isSuccess
		ifTrue: [ gbn jsonDeserializeStreamFrom: response entity string readStream ]
		ifFalse: [ nil ].
	error := gbn findErrorMessageIn: response.

	aCompletionBlock value: dict value: error