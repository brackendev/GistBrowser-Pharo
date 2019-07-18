tests
testJsonSerializeFrom
	self
		assert: (gbNetwork jsonSerializeFrom: testModel1)
		equals: '{"slot1":"1","slot2":2,"slot3":null}'