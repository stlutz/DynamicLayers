installation
installIfNecessary

	self isInstalled
		ifTrue: [self logInstallation]
		ifFalse: [self install]