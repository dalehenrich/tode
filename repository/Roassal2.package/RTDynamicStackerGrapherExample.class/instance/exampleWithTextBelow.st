sources
exampleWithTextBelow

| b |
b := RTDynamicStackedGrapher new.
b numberOfBars: 10.
b minY: -200; maxY: 200.

b y: #yourself.
 
b barShape color: (Color red alpha: 0.3).
b textBelow: #yourself.

b build.
b view addMenu: '+ 1' callback: [ b add: 400 atRandom - 200 ].
^ b view