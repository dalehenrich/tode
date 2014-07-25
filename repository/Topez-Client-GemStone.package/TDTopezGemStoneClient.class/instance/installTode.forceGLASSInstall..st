tode installation
installTode: installBlock forceGLASSInstall: forceGLASSInstall 
	[ 
	[ 
	| installSession  glassNotInstalled |
	installSession := self loginUsing: TodeInstallSession.
	[ 
	glassNotInstalled := installSession
		executeStringNB: '(System myUserProfile symbolList objectNamed: #ConfigurationOfGLASS) == nil'
		envId: self environmentId ]
		ensure: [ installSession logout ].
	glassNotInstalled
		ifTrue: [ 
			true
				ifTrue: [ 
					"for now we will not attempt to install GLASS over GCI"
					self
						error:
							'GLASS must be pre-installed. Shut down your stone and restart after copying  $GEMSTONE/bin/extent0.seaside.dbf to $GEMSTONE/seaside/data/extent0.dbf.' ].
			forceGLASSInstall
				ifFalse: [ ^ 'GLASS not installed. If you want to force GLASS to be installed, use the `--force` option.' ].
			self installGLASS ].
	installSession := self loginUsing: TodeInstallSession.
	[installBlock value: installSession]
	
		ensure: [ installSession logout ] ]
		on: GsErrorNotification
		do: [ :ex | self error: 'Error while installing tODE' , ex description ] ]
		on: Error
		do: [ :ex | 
			self shell debugMode
				ifTrue: [ self halt ]
				ifFalse: [ ex pass ] ]