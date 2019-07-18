event handling
actionDeleteFileItem
	selectedFile value
		ifNotNil: [ (GBTools
				proceed: 'Are you sure you want to delete this file?'
				title: 'Delete File')
				ifTrue: [ self
						deleteGBDeleteFile:
							(GBDeleteFile
								createWith: (selectedGist value at: #id)
								for: (selectedFile value at: #filename))
								completion: [ :success :error | 
					success
						ifTrue: [ self refreshAll ].
					error ifNotNil: [ GBTools alert: error ]
					]
					]
			]