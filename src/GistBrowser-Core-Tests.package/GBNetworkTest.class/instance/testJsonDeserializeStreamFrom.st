tests
testJsonDeserializeStreamFrom
	| dict |
	dict := Dictionary
		newFrom:
			{(#slot1 -> '1').
			(#slot2 -> 2).
			(#slot3 -> nil)}.
	self
		assert:
			(gbNetwork
				jsonDeserializeStreamFrom: '{"slot1":"1","slot2":2,"slot3":null}' readStream)
		equals: dict