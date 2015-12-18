tests
testForAdd

	| v es positions |
	v := RTView new.
	es := RTBox elementsOn: (1 to: 5).
	v addAll: es.
	es @ RTDraggable.

	RTNest new
		for: es
		add: [ :group :model | 
			group addAll: ((RTBox new color: Color blue) elementsOn: (1 to: model)).
			RTGridLayout on: group.
		].

	RTGridLayout on: es.
	
	positions := 
((Array new: 20) at: 1 put: ((7.5@7.5)); at: 2 put: ((32.5@7.5)); at: 3 put: ((62.5@12.5)); at: 4 put: ((12.5@42.5)); at: 5 put: ((47.5@42.5)); at: 6 put: ((8.0@8.0)); at: 7 put: ((28.0@8.0)); at: 8 put: ((38.0@8.0)); at: 9 put: ((58.0@8.0)); at: 10 put: ((68.0@8.0)); at: 11 put: ((58.0@18.0)); at: 12 put: ((8.0@38.0)); at: 13 put: ((18.0@38.0)); at: 14 put: ((8.0@48.0)); at: 15 put: ((18.0@48.0)); at: 16 put: ((38.0@38.0)); at: 17 put: ((48.0@38.0)); at: 18 put: ((58.0@38.0)); at: 19 put: ((38.0@48.0)); at: 20 put: ((48.0@48.0)); yourself).
	self assert: (v elements collect: #position) asArray equals: positions