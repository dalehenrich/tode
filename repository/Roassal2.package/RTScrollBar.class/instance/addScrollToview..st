as yet unclassified
addScrollToview: aView
	
	"add a scroll bar to the view"
	| b|
	b := RTScrollBarBuilder new.
	b view: aView.
	b build.