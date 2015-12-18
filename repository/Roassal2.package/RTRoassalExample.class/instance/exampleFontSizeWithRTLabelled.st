sources
exampleFontSizeWithRTLabelled

| v  vv es shape |
v := RTView new.
vv := 10 to: 100 by: 10.

shape := RTEllipse new size: #yourself.
es := shape elementsOn: vv.

v addAll: es.
es @ (RTLabelled new fontSize: #yourself).
RTCircleLayout new radius: 250; on: es.
^ v