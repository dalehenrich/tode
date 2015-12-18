as yet unclassified
defaultScrollBar
"all default values of scroll bar"
	self scrollBarType: #isBasic. 
	self movable: #isMovable.
	self barShape: #anEllipse.
	self fixedPosition:  [ :v | (v view canvas extent x /2)@(v view canvas extent y  * 3 / 4)].
	self size: 200.
	self width: 20.
	self orientation: #horizontal	