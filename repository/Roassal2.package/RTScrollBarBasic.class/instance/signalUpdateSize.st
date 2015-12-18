as yet unclassified
signalUpdateSize
	| sizeNow |

	sizeNow := self size.
	(self orientation = #horizontal) ifTrue: [

				self shapes surroundingRectangle width: sizeNow.
				self shapes start position: (self shapes surroundingRectangle position x - (sizeNow /2) +1)@(self shapes surroundingRectangle position y).
				self shapes stop position: (self shapes surroundingRectangle position x + (sizeNow /2) -1)@(self shapes surroundingRectangle position y).
				self shapes margeRectangle width: (sizeNow - self barWidth).		
				self shapes bar width: self barWidth.
				
				self positionOnBorderHorizontal.
				
				].
	(self orientation = #vertical) ifTrue: [
				
				self shapes surroundingRectangle height: sizeNow.
				self shapes start position: (self shapes surroundingRectangle position x)@(self shapes surroundingRectangle position y - (sizeNow / 2) +1).
				self shapes stop position: (self shapes surroundingRectangle position x)@(self shapes surroundingRectangle position y + (sizeNow / 2) -1).
				self shapes margeRectangle height: (sizeNow - (self barHeight)).
				self shapes bar height: self barHeight.
				
				self positionOnBorderVertical.
				
				].
				
				