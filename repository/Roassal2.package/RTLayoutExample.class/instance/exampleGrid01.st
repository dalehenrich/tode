sources
exampleGrid01

| v es |
v := RTView new.

es := (RTEllipse new size: 12) elementsOn: (1 to: 100).
v addAll: es.

RTGridLayout on: es.
^ v