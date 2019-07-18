spec creation
bottomColumnRightLayout
	^ SpecLayout composed
		newColumn: [ :column | 
			column
				newRow: #privateCheckBoxPresenter;
				newRow: #saveButtonPresenter
			]
			width: self buttonWidth;
		yourself