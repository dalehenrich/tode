as yet unclassified
signalUpdatePosition

	| pr pos sizeNow |
	
	pos := self fixedPosition.
	sizeNow := self size.
		
			(self orientation = #horizontal) ifTrue: [
				
				pr := (((self view canvas camera position x) - (self encompassingRectangle origin x)) / (self encompassingRectangle width)) * sizeNow.
	
				self shapes surroundingRectangle position: pos.
				
				self shapes start position: (pos x - (sizeNow / 2) +1)@(self shapes surroundingRectangle position y).
				self shapes stop position: (pos x + (sizeNow / 2) -1)@(self shapes surroundingRectangle position y).
				
				self shapes bar position: (pr + (self shapes start position x - 1))@(pos y).	
				
				].
			
			(self orientation = #vertical) ifTrue: [
					
				pr := (((0@(self view canvas camera position y)) dist: (0@(self encompassingRectangle origin y))) / (self encompassingRectangle height)) * (self shapes surroundingRectangle height).
								
				self shapes surroundingRectangle position: pos.
				
				self shapes start position: (self shapes surroundingRectangle position x)@(pos y - (sizeNow / 2) +1).
				self shapes stop position: (self shapes surroundingRectangle position x)@(pos y + (sizeNow / 2) -1).
				
				self shapes bar position: (pos x)@(pr + (self shapes start position y - 1)).

			].
			
		self shapes margeRectangle position: pos.	