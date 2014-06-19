tode installation
installGLASSSystemUser
	[ 
	[ 
	| systemUserSession oldSessionDescription systemUserSessionDescription |
	oldSessionDescription := self sessionDescription.
	systemUserSessionDescription := oldSessionDescription copy
		userId: 'SystemUser';
		password: 'swordfish';
		yourself.
	[ 
	self sessionDescription: systemUserSessionDescription.
	systemUserSession := self loginUsing: TodeInstallSession.
	[ systemUserSession executeStringNB: self installGLASSLegacyStreamsString ]
		ensure: [ systemUserSession logout ] ]
		ensure: [ self sessionDescription: oldSessionDescription ] ]
		on: GsErrorNotification
		do: [ :ex | self error: 'Unable to log into server:' , ex description ] ]
		on: Error
		do: [ :ex | self halt ]