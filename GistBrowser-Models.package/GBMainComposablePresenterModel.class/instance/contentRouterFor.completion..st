helpers
contentRouterFor: aFile completion: aCompletionBlock
	| download |
	download := GBTools
		doAndBlockUI: [ self
				retrieveFileContentFor: aFile
				completion: [ :content | 
					| newFile |
					newFile := aFile.
					newFile at: #content put: content.
					aCompletionBlock value: newFile
					]
			].
	aFile
		at: #truncated
		ifPresent: [ (aFile at: #truncated)
				ifTrue: [ ^ download ]
			]
		ifAbsent: [ ^ download ].
	aFile at: #content ifAbsent: [ ^ download ].
	aCompletionBlock value: aFile