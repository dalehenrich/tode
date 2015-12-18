as yet unclassified
addPadToview: aView
	
	"add a scroll pad to the view"
	| b|
	b := RTScrollBarBuilder new.
	b view: aView.
	b scrollBarType: #isPad.
	b build.