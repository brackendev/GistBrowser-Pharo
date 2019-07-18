serialization
jsonDeserializeStreamFrom: aStream with: aModel
	^ (NeoJSONReader on: aStream) nextAs: aModel