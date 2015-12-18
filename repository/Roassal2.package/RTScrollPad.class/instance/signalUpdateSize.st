as yet unclassified
signalUpdateSize
				
			self shapes surroundingRectangle width: self size.
			self shapes surroundingRectangle height: self size.
			self shapes margeRectangle width: (self size - (self barWidth)).
			self shapes margeRectangle height: (self size - (self barHeight)).
			self shapes bar width: self barWidth.
			self shapes bar height: self barHeight.			
			
			self positionOnBorderHorizontal.
			
			
	