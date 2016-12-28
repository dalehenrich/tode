running
getNewExternalGsUser
	| stonString |
	Transcript
		cr;
		show: self class name , '>>getNewExternalGsUser'.
	self
		todeShellDo: [ :shell | 
			shell session.	"login"
			stonString := shell topez
				evaluateSTONSmalltalk: 'TDExternalServerSupport new getNewExternalGsUser. nil'
				batchMode: true ]
		sessionDescription: super sessionDescription