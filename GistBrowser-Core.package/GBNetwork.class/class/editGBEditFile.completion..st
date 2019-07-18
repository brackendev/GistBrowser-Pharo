public requesting
editGBEditFile: aGBEditFile completion: aCompletionBlock
	"https://developer.github.com/v3/gists/#edit-a-gist"

	| gbn response dict error |
	gbn := self new.
	response := gbn
		gistsPATCH: 'https://api.github.com/gists/' , aGBEditFile gistID
		entity: (gbn jsonEntityBuilderFor: aGBEditFile asDictForAPI).

	dict := response isSuccess
		ifTrue: [ gbn jsonDeserializeStreamFrom: response entity string readStream ]
		ifFalse: [ nil ].
	error := gbn findErrorMessageIn: response.

	aCompletionBlock value: dict value: error