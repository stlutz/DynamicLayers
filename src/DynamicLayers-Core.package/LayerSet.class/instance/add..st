adding
add: aLayer

	layers at: aLayer put: (highestPriority := highestPriority + 1).
	^ aLayer