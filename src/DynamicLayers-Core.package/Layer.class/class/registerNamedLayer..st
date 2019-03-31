named layers
registerNamedLayer: aLayer

	^ self 
		registerNamedLayer: aLayer
		ifDuplicate: [self error: 'A layer with that name already exists']