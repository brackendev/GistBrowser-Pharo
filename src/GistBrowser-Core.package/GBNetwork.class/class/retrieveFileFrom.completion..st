public requesting
retrieveFileFrom: aURLString completion: aCompletionBlock
	[ aCompletionBlock
		value: (self new gistsGET: aURLString) entity string
	]
		on: Exception
		do: [ :error | aCompletionBlock value: nil ]