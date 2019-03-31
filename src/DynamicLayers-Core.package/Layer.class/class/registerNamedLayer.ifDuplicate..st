named layers
registerNamedLayer: aLayer ifDuplicate: resolveBlock

	^ self namedLayers
		at: aLayer name
		ifPresent: [:duplicate |
			duplicate
				ifNil: [self namedLayers at: aLayer name put: aLayer]
				ifNotNil: resolveBlock]
		ifAbsentPut: aLayer