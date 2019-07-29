*DynamicLayers-Core
activeLayers

	^ receiver isLayerSet
		ifTrue: [receiver]
		ifFalse: [self nextHandlerContext activeLayers]