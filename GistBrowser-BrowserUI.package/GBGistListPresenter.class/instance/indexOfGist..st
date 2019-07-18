helpers
indexOfGist: aGistIDString
	1 to: self listItems size do: [ :i | 
		((self listItems at: i) at: #id) = aGistIDString
			ifTrue: [ ^ i ]
		]. ^ 0