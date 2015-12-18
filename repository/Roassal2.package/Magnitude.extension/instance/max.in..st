*Roassal2-Core
max: max in: anInterval 
	"
	(0 max: 20 in: (1 to: 10)) == 1
	(0 max: 20 in: (0 to: 10)) == 0
	(0 max: 20 in: (1 to: 10)) == 1
	(2 max: 20 in: (0 to: 10)) == 1 
	(4 max: 20 in: (0 to: 10)) == 2
	(20 max: 20 in: (0 to: 10)) == 10
	"
	^ self min: 0 max: max in: anInterval