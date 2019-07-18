event handling
actionStarItem
	| alertMessage alertTitle completionBlock |
	self selectedGist ifNil: [ ^ self ].

	selectedStarred value
		ifNil: [ alertMessage := 'Are you sure you want to star this Gist?'.
			alertTitle := 'Star Gist'
			]
		ifNotNil: [ alertMessage := 'Are you sure you want to unstar this Gist?'.
			alertTitle := 'Unstar Gist'
			].

	(GBTools proceed: alertMessage title: alertTitle)
		ifFalse: [ ^ self ].

	completionBlock := [ :starred :error | 
	starred
		ifTrue: [ selectedStarred value: 'y' ]
		ifFalse: [ selectedStarred value: nil ].
	error ifNotNil: [ GBTools alert: error ]
	].

	GBTools
		doAndBlockUI: [ selectedStarred value
				ifNil: [ GBNetwork
						starGist: (self selectedGist at: #id)
						completion: [ :success :error | completionBlock value: true value: error ]
					]
				ifNotNil: [ GBNetwork
						unstarGist: (self selectedGist at: #id)
						completion: [ :success :error | completionBlock value: false value: error ]
					]
			]