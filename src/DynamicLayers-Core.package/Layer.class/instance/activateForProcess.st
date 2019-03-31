activation - defaults
activateForProcess

	| activeProcess |
	activeProcess := Processor activeProcess.
	self addActivator: [activeProcess = Processor activeProcess]