serialization
jsonDeserializeStringFrom: aString with: aModel
	^ (NeoJSONReader on: aString readStream)
      for: aModel do: [ :m | m mapInstVars ];
		nextAs: aModel.