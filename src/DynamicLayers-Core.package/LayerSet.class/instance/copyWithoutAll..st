copying
copyWithoutAll: aCollection

	^ self copy
		removeAllFoundIn: aCollection;
		yourself