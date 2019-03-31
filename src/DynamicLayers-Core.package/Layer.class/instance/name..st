accessing
name: aSymbol

	self name ifNotNil: [self class unregisterNamedLayer: self].
	self setName: aSymbol asSymbol.
	self class registerNamedLayer: self