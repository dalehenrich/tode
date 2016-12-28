tests
testLogin
	Transcript
		cr;
		show: self class name , '>>testLogin '.
	self
		todeShellDo: [ :shell | 
			shell session.	"login"
			shell evaluate: 'ls' ]