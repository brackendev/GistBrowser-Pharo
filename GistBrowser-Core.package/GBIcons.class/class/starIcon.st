accessing - icons
starIcon
	"Private - Generated method"

	^ self icons
		at: #starIcon
		ifAbsentPut: [ Form
				fromBinaryStream: self starIconContents contents base64Decoded readStream
			]