public
on: element in: view
	| anim |
	anim := self on: element.
	view addAnimation: anim.
	anim start