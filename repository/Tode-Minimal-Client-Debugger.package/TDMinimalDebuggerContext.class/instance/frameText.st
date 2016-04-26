accessing
frameText

	^ frameText ifNil: [  frameText := self session stackClientElement firstList key at: frameIndex]