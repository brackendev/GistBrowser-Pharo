helpers
resetGistList
	gistListProcess ifNotNil: [ gistListProcess terminate. gistListProcess := nil ].
	isStarredProcess ifNotNil: [ isStarredProcess terminate. isStarredProcess := nil ].
	self gistListSelectedItemChanged: nil