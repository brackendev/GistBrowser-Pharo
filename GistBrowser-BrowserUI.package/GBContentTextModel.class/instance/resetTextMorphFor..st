initialization
resetTextMorphFor: aTextMorph
	[ self updateText: ''.
	aTextMorph model: self;
	beForSmalltalkScripting
	]
		on: Exception
		do: [ :error | Transcript crShow: error ]