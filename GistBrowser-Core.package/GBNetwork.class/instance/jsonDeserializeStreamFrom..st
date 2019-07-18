serialization
jsonDeserializeStreamFrom: aStream
	^ (NeoJSONReader
		on: aStream)
		next