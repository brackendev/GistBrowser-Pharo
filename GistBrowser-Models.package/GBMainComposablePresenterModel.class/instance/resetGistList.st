helpers
resetGistList
	gistListProcess ifNotNil: [ gistListProcess terminate ].
	isStarredProcess ifNotNil: [ isStarredProcess terminate ].
	self gistListSelectedItemChanged: nil