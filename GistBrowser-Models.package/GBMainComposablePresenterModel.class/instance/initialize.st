initialization
initialize
	super initialize.

	username := String new asValueHolder.
	username
		whenChangedDo:
			[ :newValue :oldValue |
			NetNameResolver isConnected ifTrue: [
			 self resetGistList. self retrieveGistListFor: newValue oldUsername: oldValue ]].
	usernameForm := String new asValueHolder.
	gistList := OrderedCollection new asValueHolder.
	selectedGist := String new asValueHolder.
	selectedStarred := String new asValueHolder.
	selectedFile := String new asValueHolder