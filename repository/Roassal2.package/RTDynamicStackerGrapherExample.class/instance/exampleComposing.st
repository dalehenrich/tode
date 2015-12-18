sources
exampleComposing

| composer a b |
composer := RTComposer new.
    a := RTDynamicStackedGrapher new.
    a minY: -200; maxY: 200.
    a view: composer view.
    a y: #yourself.
	a build.	
composer group: #first.

    b := RTDynamicStackedGrapher new.  
    b minY: -200; maxY: 200.
    b view: composer view.
    b y: #yourself.
	b build.
composer group: #second.

composer move: #first onTheLeftOf: #second.
composer nameGroup: #first as: 'aFirstName'.
composer nameGroup: #second as: 'aSecondName'.
composer setGeneralTitle: 'aGeneralTitle'.

composer view addMenu: 'Left' callback: [ a add: 400 atRandom - 200 ].
composer view addMenu: 'Right' callback: [ b add: 400 atRandom - 200 ].

^ composer view