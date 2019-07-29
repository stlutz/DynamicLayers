baseline
baseline: spec
	<baseline>
	spec for: #common do: [
		spec
			package: 'DynamicLayers-Core'.
		spec
			group: 'Core' with: #('DynamicLayers-Core');
			group: 'default' with: #('Core');
			group: 'CompleteWithoutTests' with: #('Core')";
			group: 'CompleteWithTests' with: #('CompleteWithoutTests' 'Tests')"]