testing
isActive

	^ (self conditions allSatisfy: #value)
		and: [self activators anySatisfy: #value]