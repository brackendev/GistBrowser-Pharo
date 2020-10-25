file in/out
fileAllOutFor: aGist
	aGist
		ifNotNil: [ (aGist at: #files) do: [ :aFile | self fileOutFor: aFile ] ]