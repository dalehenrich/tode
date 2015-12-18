sources
exampleCoolAnimation
| v shape elements |
v := RTView new.
shape := RTEllipse new color: (Color purple alpha: 0.1); size: #yourself.
elements := shape elementsOn: (1 to: 100 by: 10).
v addAll: elements.

v canvas addMenu: 'Right!' callback: [  elements do: [ :e | RTLinearMove new to: e model @ 0 during: 1 on: e in: v ] ].

v canvas addMenu: 'Left!' callback: [  elements do: [ :e | RTLinearMove new to: e model negated @ 0 during: 1 on: e in: v ] ].

v canvas addMenu: 'Up!' callback: [  elements do: [ :e | RTLinearMove new to: 0 @ e model negated during: 1 on: e in: v ] ].

v canvas addMenu: 'Down!' callback: [  elements do: [ :e | RTLinearMove new to: 0 @ e model during: 1 on: e in: v ] ].

^ v