actions
clean
	"Remove all the elements of the view. It does not remove elements that are directly added to the canvas however"
	self elements copy do: #remove.
	self edges copy do: #remove.