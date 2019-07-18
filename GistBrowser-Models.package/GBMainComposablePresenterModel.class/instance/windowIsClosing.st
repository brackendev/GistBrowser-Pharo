updating
windowIsClosing
	avatarProcess ifNotNil: [ avatarProcess terminate ].
	gistListProcess ifNotNil: [ gistListProcess terminate ].
	contentProcess ifNotNil: [ contentProcess terminate ].
	isStarredProcess ifNotNil: [ isStarredProcess terminate ]