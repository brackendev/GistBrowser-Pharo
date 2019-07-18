public requesting
retrieveUserGists: aUsernameString completion: aCompletionBlock
	"https://developer.github.com/v3/gists/#list-a-users-gists"

	| gbn perPage requestBlock allResults |
	gbn := self new.
	perPage := 100.
	allResults := OrderedCollection new.

	requestBlock := [ :aPage | 
	| response array |
	response := gbn
		gistsGET:
			'https://api.github.com/users/' , aUsernameString , '/gists?page='
				, aPage asString , '&per_page=' , perPage asString.

	array := response isSuccess
		ifTrue:
			[ gbn jsonDeserializeStreamFrom: response entity string readStream ]
		ifFalse: [ Array new ].

	response isSuccess not | array isEmpty
		ifTrue: [ aCompletionBlock
				value: allResults
				value: (gbn findErrorMessageIn: response)
			]
		ifFalse: [ allResults := allResults , array asOrderedCollection.
			requestBlock value: aPage + 1
			]
	].

	requestBlock value: 1