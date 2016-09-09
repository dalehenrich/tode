initialization
forObjectWithOop: anObjectOop limit: limit
  | object |
  object := Object _objectForOop: anObjectOop.
  oopOf := anObjectOop.
  sizeOf := Reflection sizeOf: object.
  classOfName := (Reflection classOf: object) name.
  [ 
  displayString := limit > 0
    ifTrue: [ object printStringLimitedTo: limit ]
    ifFalse: [ object printString ] ]
    on: Error , AlmostOutOfStack
    do: [ :ignored | 'error printing' ]