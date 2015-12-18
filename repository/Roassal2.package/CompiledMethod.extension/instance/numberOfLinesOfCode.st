*roassal2
numberOfLinesOfCode
	(self propertyValueAt: #numberOfLinesOfCode)
			ifNil: [ self propertyValueAt: #numberOfLinesOfCode put: self getSource lineCount ].

	^ self propertyValueAt: #numberOfLinesOfCode 