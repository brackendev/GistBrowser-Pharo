accessing - icons
starFilledIcon
	"Private - Generated method"

	^ self icons
		at: #starFilledIcon
		ifAbsentPut: [ Form
				fromBinaryStream: self starFilledIconContents contents base64Decoded readStream
			]