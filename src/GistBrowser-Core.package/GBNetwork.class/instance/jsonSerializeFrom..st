serialization
jsonSerializeFrom: anObject
	^ String
		streamContents: [ :stream | 
			(NeoJSONWriter on: stream)
				writeNil: true;
				nextPut: anObject]