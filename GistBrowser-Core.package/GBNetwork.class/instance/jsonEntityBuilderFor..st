helpers
jsonEntityBuilderFor: anObject
	^ ZnEntity
		with: (self jsonSerializeFrom: anObject)
		type: ZnMimeType applicationJson