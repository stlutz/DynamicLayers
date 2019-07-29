installation
uninstallIfNecessary

	self canBeUninstalled
		ifTrue: [self uninstall]
		ifFalse: [self logUninstallation]