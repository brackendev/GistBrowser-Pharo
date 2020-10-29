updating
windowIsClosing
	avatarProcess ifNotNil: [ avatarProcess terminate. avatarProcess := nil ].
	gistListProcess ifNotNil: [ gistListProcess terminate. gistListProcess := nil ].
	contentProcess ifNotNil: [ contentProcess terminate. contentProcess := nil ].
	isStarredProcess ifNotNil: [ isStarredProcess terminate. isStarredProcess := nil ].