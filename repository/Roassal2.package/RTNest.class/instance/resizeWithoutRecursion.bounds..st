utility
resizeWithoutRecursion: backElement bounds: encompassingRectangle
	"it translates backElement, but does not trigger events."
	| newRec |
	newRec := (encompassingRectangle topLeft - (padding @ padding)) extent: 
					((encompassingRectangle width + (padding * 2)) @ 
					 (encompassingRectangle height + (padding * 2))).

	backElement trachelShape
		extent: (encompassingRectangle width + (padding * 2)) @ (encompassingRectangle height + (padding * 2)).	
	backElement trachelShape doWithoutCallbacks: [ backElement translateTo: encompassingRectangle center ]