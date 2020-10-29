accessing - icons
forkIcon
	"Private - Generated method"

	^ self icons
		at: #forkIcon
		ifAbsentPut: [ Form
				fromBinaryStream: self forkIconContents contents base64Decoded readStream
			]