utility
createAxisConfiguration
	| newAxis |
	newAxis := RTAxisConfiguration new.
	newAxis builder: self.
	^ newAxis