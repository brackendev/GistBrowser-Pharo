api - queries
retrieveStarStatusFor: aGistIDString completion: aCompletionBlock
	isStarredProcess ifNotNil: [ isStarredProcess terminate ].
	isStarredProcess := GBTools
		doWithBackgroundPriority:
			[ GBNetwork isGistStarred: aGistIDString completion: [ :starred | 
					GBTools
						doWithHighPriority: [ aCompletionBlock value: starred ]
					]
			]