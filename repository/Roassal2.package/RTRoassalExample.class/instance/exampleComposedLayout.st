sources
exampleComposedLayout

| view es1 es2 es3 |
view := RTView new.

es1 := (RTEllipse new color: Color lightRed; size: 20) elementsOn: (1 to: 20).
RTForceBasedLayout on: es1.
view addAll: es1.

es2 := (RTEllipse new color: Color lightGreen; size: 20) elementsOn: (1 to: 20).
RTForceBasedLayout on: es2.
view addAll: es2.

es3 := (RTEllipse new color: Color lightBlue; size: 20) elementsOn: (1 to: 20).
RTForceBasedLayout on: es3.
view addAll: es3.

RTForceBasedLayout new 
	charge: -800;
	on: (Array with: es1 with: es2 with: es3).

^ view