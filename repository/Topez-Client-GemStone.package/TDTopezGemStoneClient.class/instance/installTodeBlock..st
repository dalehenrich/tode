tode installation
installTodeBlock: installBlock 
	[ 
	[ 
	| installSession glassNotInstalled |
	installSession := self loginUsing: TodeInstallSession.
	[ 
	glassNotInstalled := installSession
		executeStringNB: '(System myUserProfile symbolList objectNamed: #ConfigurationOfGLASS) == nil'
		envId: self environmentId ]
		ensure: [ installSession logout ].
	glassNotInstalled
		ifTrue: [ 
			"for now we will not attempt to install GLASS over GCI"
			self
				error:
					'GLASS must be pre-installed. Shut down your stone and restart after copying  $GEMSTONE/bin/extent0.seaside.dbf to your extent directory. If using GsDevKitHome, run the `$GS_HOME/bin/stoneExtent <sotne-name>` command.' ].
	installSession := self loginUsing: TodeInstallSession.
	[ installBlock value: installSession ]
		ensure: [ installSession logout ] ]
		on: GsErrorNotification
		do: [ :ex | self error: 'Error while installing tODE' , ex description ] ]
		on: Error
		do: [ :ex | 
			self shell debugMode
				ifTrue: [ ex pass ]
				ifFalse: [ self halt ] ]