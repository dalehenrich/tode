Constants
apiGciGemTrace: enable
	"enable = 0 none, 1 commands, 2 command+args, 3 even more"
	
	<apicall: OopType64 'GciGemTrace' ( long ) >
	^self externalCallFailed
