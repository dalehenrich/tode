sources
exampleGrid02

| v es |
v := RTView new.

es := (RTEllipse new size: #yourself) elementsOn: (1 to: 100).
v addAll: es.

RTGridLayout on: es.
^ v