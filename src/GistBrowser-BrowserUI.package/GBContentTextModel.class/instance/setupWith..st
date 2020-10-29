initialization
setupWith: anOwner
	anOwner announcingObject selectedFile
		whenChangedDo: [ :newValue | 
			newValue
				ifNil: [ self resetTextMorphFor: anOwner contentTextMorph ]
				ifNotNil: [ (newValue at: #content) isEmptyOrNil
								ifTrue: [ self resetTextMorphFor: anOwner contentTextMorph ]
								ifFalse: [ self contentIsOKFor: newValue owner: anOwner ]
							]
					]