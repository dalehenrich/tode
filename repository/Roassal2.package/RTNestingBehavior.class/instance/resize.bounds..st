utility
resize: backElement bounds: encompassingRectangle
	"it translates backElement, but does not trigger events."
	| newRec padding |
	padding := 5.
	newRec := (encompassingRectangle topLeft - (padding @ padding)) extent: 
					((encompassingRectangle width + (padding * 2)) @ 
					 (encompassingRectangle height + (padding * 2))).

	backElement
		extent: (encompassingRectangle width + (padding * 2)) @ (encompassingRectangle height + (padding * 2)).	
	backElement translateTo: encompassingRectangle center