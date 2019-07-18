announcement handling
gistListUpdatedAnnouncement: anAnnouncement
	| gistList |
	gistList := anAnnouncement gistList.
	gistList
		ifNil: [ self items: OrderedCollection new ]
		ifNotNil: [ self items: gistList. self listItems ifNotEmpty: [ self setSelectedIndex: 1 ] ]