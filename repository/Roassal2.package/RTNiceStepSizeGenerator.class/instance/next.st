public
next
	| oSet |
	
	niceStep
		stepSize: ss;
		offset: o;
		i: i; "all output and calculations shouls add 1 because wilkinsons index start from 1"
		j: j.
	"Keep track of existing offsets and stepSizes to avoid duplicate returns of 
	step size, offset pairs"
	(ssOffMap includesKey: ss) ifTrue: [ 
		oSet := ssOffMap at: ss.
		[ | b | 
			b := oSet includes: o.
			oSet add: o.
			b not and: [io < (ovar size - 1)] ] whileTrue: [
			 io := io +1.
			 niceStep offset: (o := ovar at: io +1 ). ].
		 ] ifFalse: [ 
		oSet := Set new.
		oSet add: o.
		ssOffMap at: ss put: oSet.
		 ].
	io := io +1."position for next offset if it exists"
	
	"iterate for next call"
	io < ovar size ifTrue: [ o := ovar at: io +1  ]
	ifFalse: [ 
		io := 0.
		i := (i< (qvar size - 1) ) ifTrue: [ i+1 ] ifFalse: [ 0 ] .
		j := i = 0 ifTrue: [ j+1 ] ifFalse: [ j ].
		q := self qat: i.
		ss := self stepSize: j q: q.
		ovar := self offsets: j q: q.
		o := ovar at: io + 1.
	].
	resetRequired := true.
	^ niceStep