named layers
unregisterNamedLayer: aLayer

	^ self namedLayers
		removeKey: aLayer name
		ifAbsent: [nil]