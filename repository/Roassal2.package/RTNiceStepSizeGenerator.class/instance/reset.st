public
reset
	resetRequired ifFalse: [ ^ self ].
	i := 0.
	io := 0.
	j := 1.
	q := self qat: i.
	ss := self stepSize: j q: q.
	ssOffMap := Dictionary new.
	resetRequired := false.