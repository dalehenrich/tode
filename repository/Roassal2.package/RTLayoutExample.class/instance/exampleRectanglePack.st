sources
exampleRectanglePack

| v es |
v := RTView new.

es := (RTEllipse new size: #yourself) elementsOn: (1 to: 50).
v addAll: es.

RTRectanglePackLayout on: es.
^ v