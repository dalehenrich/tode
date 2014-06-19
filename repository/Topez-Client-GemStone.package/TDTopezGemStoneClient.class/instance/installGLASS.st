tode installation
installGLASS
	"GLASS install involves running a topaz script and at the moment there is no support
     for running a topaz script from within a Smalltalk session"

	[ 
	[ 
	| installSession |
	self error: 'installing GLASS from a GCI client is not currently supported'.
	self installGLASSSystemUser.
	installSession := self loginUsing: TodeInstallSession.
	[ installSession executeStringNB: self installGLASSLegacyStreamsString ]
		ensure: [ installSession logout ] ]
		on: GsErrorNotification
		do: [ :ex | self error: 'Unable to log into server:' , ex description ] ]
		on: Error
		do: [ :ex | self halt ]