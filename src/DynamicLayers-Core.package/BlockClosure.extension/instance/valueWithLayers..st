*DynamicLayers-Core
valueWithLayers: arrayOfLayers

	| installed activator activeProcess cleanUpBlock |
	installed := OrderedCollection new.
	activeProcess := Processor activeProcess.
	activator := [Processor activeProcess = activeProcess].
	cleanUpBlock := [installed do: [:installedLayer |
						installedLayer removeActivator: activator.
						installedLayer uninstall. "but what if it errors here?"]].
	arrayOfLayers do: [:layer |
		[layer addActivator: activator.
		layer install]
			on: Error
			do: [:error |
				cleanUpBlock value.
				error pass].
		installed add: layer].
	^ [self value] ensure: cleanUpBlock