accessing
layerNamed: aString

	^ self value
		detect: [:layer | aString = layer name]
		ifNone: [nil]