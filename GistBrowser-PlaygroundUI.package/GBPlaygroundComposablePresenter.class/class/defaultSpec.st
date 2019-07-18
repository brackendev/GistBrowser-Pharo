specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column | 
			column
				newRow: #contentTextAdapter top: 0;
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