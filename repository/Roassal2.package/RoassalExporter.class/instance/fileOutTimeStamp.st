export
fileOutTimeStamp
	self tag: 'time-stamp'
		with: 'From ', Smalltalk version, ' on ', Date today printString, ' at ', Time now printString.