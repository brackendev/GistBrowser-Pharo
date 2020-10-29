specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column | 
			column
				newRow: [ :row | 
					row
						newColumn: [ :col | col newRow: self topRowLeftLayout ]
							left: 0
							right: 0.25;
						newColumn: [ :col | col newRow: self topRowRightLayout ]
							left: 0.75
							right: 0
					]
					height: self toolbarHeight;
				newRow: [ :row | 
					row
						newColumn: self middleColumnLeftLayout left: 0 right: 0.25;
						addSplitter;
						newColumn: self middleColumnRightLayout left: 0.75 right: 0
					]
					top: 0.55;
				addSplitter;
				newRow: #contentTextAdapter top: 0.45;
				addSplitter;
				newRow: [ :row | 
					row
						newColumn: self bottomColumnLeftLayout left: 0 right: 0.35;
						addSplitter;
						newColumn: self bottomColumnMiddleLayout left: 0.65 right: 0.15;
						addSplitter;
						newColumn: self bottomColumnRightLayout right: 0
					]
					height: self toolbarHeight * 2
			];
		yourself