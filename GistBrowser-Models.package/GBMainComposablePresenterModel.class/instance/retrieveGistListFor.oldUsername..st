helpers
retrieveGistListFor: aUsernameString oldUsername: anOldUsernameString
	aUsernameString isEmptyOrNil
		ifTrue: [ usernameForm value: nil ]
		ifFalse: [ self
				retrieveGistListFor: username value
				completion: [ :gists :error | 
					gistList := gists.
					announcer announce: (GBAnnouncementGistListUpdated for: gistList).
					error ifNotNil: [ GBTools alert: error ].
					aUsernameString ~= anOldUsernameString
						ifTrue: [ gistList value
								ifNotNil: [ gistList value
										ifNotEmpty: [ self retrieveAvatarFormFor: (gistList value at: 1) ]
									]
							]
					]
			]