initialization
setQ: anArray base: aNumber
	"anArray: preference ordered list of niceStep step sizes. 
	The deault is set by the initializer selector
	
	aNumber: is a number of logs and exps usually changed together with Q"
	qvar := anArray.
	base := aNumber.
	i := 0.
	io := 0.
	j := 1.
	q := self qat: i.
	ss := self stepSize: j q: q.
	ovar := self offsets: j q: q.
	ssOffMap := Dictionary new.
	resetRequired := false.
	
	