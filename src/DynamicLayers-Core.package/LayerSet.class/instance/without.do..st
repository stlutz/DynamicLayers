activation
without: substractedLayers do: aBlock

	^ (self copyWithoutAll: substractedLayers) beActiveLayersDuring: aBlock