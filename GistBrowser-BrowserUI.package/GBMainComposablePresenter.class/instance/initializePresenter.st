initialization
initializePresenter
	gistListPresenter
		displayBlock:
			[ :aGist | 
			(aGist at: #description) isEmptyOrNil
				ifTrue: [ 'No description. ' , (aGist at: #created_at) ]
				ifFalse: [ aGist at: #description ]
			].
		
	fileListPresenter
		displayBlock:
			[ :aFile | 
			(aFile at: #filename) isEmptyOrNil
				ifTrue: [ 'No filename' ]
				ifFalse: [ aFile at: #filename ]
			]