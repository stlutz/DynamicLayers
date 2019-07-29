activation
with: additionalLayers do: aBlock

	| installed cleanUpBlock |
	installed := OrderedCollection new.
	cleanUpBlock := [installed do: [:layer | layer uninstallIfNecessary]].
	additionalLayers do: [:layer |
		[layer installIfNecessary]
			on: Error
			do: [:error |
				cleanUpBlock value.
				error pass].
		installed add: layer].
	^ [(self copyWithAll: installed) beActiveLayersDuring: aBlock] ensure: cleanUpBlock