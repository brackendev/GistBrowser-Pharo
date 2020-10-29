helpers
updateStarItemIconWith: aBoolean
	"TODO: Find a better way."

	((((self widget widget submorphs at: 6) submorphs at: 1) submorphs
		at: 1) submorphs at: 1)
		image: (self starItemIconFilled: aBoolean)