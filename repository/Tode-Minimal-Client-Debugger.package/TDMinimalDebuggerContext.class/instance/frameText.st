accessing
frameText

	^ frameText ifNil: [  frameText := self session stackClientElement clientElement firstList key at: frameIndex]