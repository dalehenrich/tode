sources
exampleVerySimple
| view circle |
	view := RTView new.
	circle := (RTEllipse new size: 40; color: (Color purple alpha: 0.2)) element.
	view add: circle.
	view addAnimation: (RTLinearMove to: 100 @ 100 during: 2 on: circle). 

	^ view
