helpers
starItemIconFilled: aBoolean
	aBoolean
				ifTrue: [ ^ GBIcons starFilledIcon ]
				ifFalse: [ ^ GBIcons starIcon ]