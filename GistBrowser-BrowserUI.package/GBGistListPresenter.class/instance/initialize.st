initialization
initialize
	super initialize.
	self
		whenSelectedItemChanged: [ :item | owner announcingObject gistListSelectedItemChanged: item ];
		menu: [ self createMenu ].

	owner announcingObject selectedGist
		whenChangedDo: [ :newValue |
		newValue ifNil: [ self setSelectedIndex: 0 ]
		 ].
	owner announcingObject announcer
		when: GBAnnouncementGistListUpdated
		send: #gistListUpdatedAnnouncement:
		to: self