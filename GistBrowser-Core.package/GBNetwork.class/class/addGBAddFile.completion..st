public requesting
addGBAddFile: aGistAddFile completion: aCompletionBlock
	"https://developer.github.com/v3/gists/#edit-a-gist"

	| gbn response dict error |
	gbn := GBNetwork new.
	response := gbn
		gistsPATCH: 'https://api.github.com/gists/' , aGistAddFile gistID
		entity: (gbn jsonEntityBuilderFor: aGistAddFile asDictForAPI).

	dict := response isSuccess
		ifTrue: [ gbn jsonDeserializeStreamFrom: response entity string readStream ]
		ifFalse: [ nil ].
	error := gbn findErrorMessageIn: response.

	aCompletionBlock value: dict value: error