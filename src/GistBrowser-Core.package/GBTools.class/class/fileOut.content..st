private
fileOut: aFilenameString content: aString
	"CodeExporter
		writeSourceCodeFrom: aString readStream
		toFileReference: aFilenameString asFileReference."

	aFilenameString asFileReference
		ensureDelete;
		writeStreamDo: [ :stream | stream nextPutAll: aString ].
	UIManager default
		inform:
			'Filed out to: ' , String cr
				, aFilenameString asFileReference pathString