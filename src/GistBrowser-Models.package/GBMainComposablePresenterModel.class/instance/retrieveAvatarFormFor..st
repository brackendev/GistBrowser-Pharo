api - queries
retrieveAvatarFormFor: aGist
	avatarProcess ifNotNil: [ avatarProcess terminate ].
	avatarProcess := GBTools doWithBackgroundPriority: [ GBNetwork
		retrieveAvatar: ((aGist at: #owner) at: #avatar_url)
		completion: [ :form | GBTools doWithHighPriority: [usernameForm value: form ]]
	]