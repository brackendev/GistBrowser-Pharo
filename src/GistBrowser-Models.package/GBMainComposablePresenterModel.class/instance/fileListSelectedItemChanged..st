event handling
fileListSelectedItemChanged: aFile
	aFile
		ifNil: [ selectedFile value: nil ]
		ifNotNil: [ self
						contentRouterFor: aFile
						completion: [ :updatedFile | selectedFile value: updatedFile ].
			]