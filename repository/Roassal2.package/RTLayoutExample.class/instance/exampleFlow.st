sources
exampleFlow

| v es |
v := RTView new.

es := (RTEllipse new size: #yourself) elementsOn: (1 to: 100).
v addAll: es.

RTFlowLayout on: es.
^ v