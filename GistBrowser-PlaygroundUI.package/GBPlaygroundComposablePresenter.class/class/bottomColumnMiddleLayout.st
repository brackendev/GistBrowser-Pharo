spec creation
bottomColumnMiddleLayout
	^ SpecLayout composed
		newColumn: [ :column | 
			column
				newRow: #filenameTextInputFieldPresenter
			];
		yourself