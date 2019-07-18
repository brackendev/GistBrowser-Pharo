event handling
tapAction
	"Edit gist"
	owner gistListPresenter hasSelection
		& owner fileListPresenter hasSelection
		ifTrue:
			[ ^ self actionEditFile ].

	"Add file"
	owner gistListPresenter hasSelection
		& owner fileListPresenter hasSelection not
		ifTrue:
			[ ^ self actionAddFile ].

	"New gist"
	owner gistListPresenter hasSelection not
		& owner fileListPresenter hasSelection not
		ifTrue: [ ^ self
				actionCreateGist ].

	^ self