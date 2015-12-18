A RTFadeInteraction is a roassal2 interaction that allows to an element of sunburst  and its path to stand out, this works with the RTMouseEnter/RTMouseLeave events.

Instance Variables
	action:		a block closure

action
	- When one element of sunburst is pointed, the fade action works over the other elements, when this happen, the action block is called with the element's model as an argument.
