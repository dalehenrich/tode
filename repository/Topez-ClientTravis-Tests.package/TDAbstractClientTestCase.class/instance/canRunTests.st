testing
canRunTests
	"To run tests locally, create a tODE client using the following bash command:
	
	  $GS_HOME/bin/createClient -t pharo tode_Pharo3.0 -v Pharo3.0 -s <stone-name> -z $GS_HOME/shared/repos/tode/.client.smalltalk.ston
"

	^ self isSmalltalkCIInstalled or: [self alternateSessionDescriptionDefined]