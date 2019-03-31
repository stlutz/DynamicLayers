default conditions
conditionForValueOf: aBlock

	| currentValue |
	currentValue := aBlock value.
	^ [currentValue = aBlock value]