helpers
findErrorMessageIn: aResponse
	aResponse isSuccess
		ifTrue: [ ^ nil ].

	aResponse entity string
		ifNotNil:
			[ | dict |
			dict := self
				jsonDeserializeStreamFrom: aResponse entity string readStream.
			dict
				ifNotNil:
					[ (dict includesKey: #message)
						ifTrue: [ ^ self addCredsMessageTo: (dict at: #message) ]
					]
			]
		ifNil:
			[ aResponse statusLine
				ifNotNil:
					[ aResponse statusLine reason
						ifNotNil: [ ^ self addCredsMessageTo: aResponse statusLine reason ]
					]
			].
		
	^ self addCredsMessageTo: 'Unknown Error'