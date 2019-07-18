event handling
gistListSelectedItemChanged: aGist
	gistListProcess ifNotNil: [ gistListProcess terminate ].
	isStarredProcess ifNotNil: [ isStarredProcess terminate ].
	aGist
		ifNil: [ selectedGist value: nil
			]
		ifNotNil: [ selectedGist value: aGist.
			self
				retrieveFullGistFor: (aGist at: #id)
				completion: [ :fullGist :error | 
					selectedGist value: fullGist.
					error ifNotNil: [ GBTools alert: error ]
					].
			self
				retrieveStarStatusFor: (aGist at: #id)
				completion: [ :starred | 
					starred
						ifTrue: [ selectedStarred value: 'y' ]
						ifFalse: [ selectedStarred value: nil ]
					]
			]