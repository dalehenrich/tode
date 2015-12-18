public
to: anEndPoint during: seconds on: anElement in: aView
	| anim |
	anim := self to: anEndPoint during: seconds on: anElement.
	aView addAnimation: anim