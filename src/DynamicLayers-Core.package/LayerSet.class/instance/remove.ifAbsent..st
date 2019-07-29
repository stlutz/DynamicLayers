removing
remove: aLayer ifAbsent: aBlock

	layers removeKey: aLayer ifAbsent: aBlock.
	^ aLayer