tests
testJsonDeserializeStringFrom
	| dict |
	dict := Dictionary
		newFrom:
			{(#slot1 -> '1').
			(#slot2 -> 2).
			(#slot3 -> nil)}.
	self
		assert:
			(gbNetwork
				jsonDeserializeStringFrom: '{"slot1":"1","slot2":2,"slot3":null}')
		equals: dict