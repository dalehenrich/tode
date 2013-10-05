*tode-pharo14
padRightTo: length with: char
	^ self, (String new: (length - self size max: 0) withAll: char)