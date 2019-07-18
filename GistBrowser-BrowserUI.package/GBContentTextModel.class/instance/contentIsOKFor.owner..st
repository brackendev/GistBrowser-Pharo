initialization
contentIsOKFor: aFile owner: anOwner
(aFile at: #language) = 'Smalltalk'
								ifTrue: [ self
										updateSmalltalkCodeFor: anOwner contentTextMorph
										with: (aFile at: #content)
									]
								ifFalse: [ self
										updateNonSmalltalkCodeFor: anOwner contentTextMorph
										with: (aFile at: #content)
									]