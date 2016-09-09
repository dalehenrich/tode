initialization
forObjectWithOop: anObjectOop limit: limit
  | object objectClass |
  object := Object _objectForOop: anObjectOop.
  oopOf := anObjectOop.
  sizeOf := Reflection sizeOf: object.
  objectClass := Reflection classOf: object.
  classOfName := objectClass name.
  displayString := [ 
  limit > 0
    ifTrue: [ 
      | ws |
      ws := PrintStream printingOn: String new maxSize: limit.
      object printOn: ws.
      ws contents ]
    ifFalse: [ object printString ] ]
    on: Error , AlmostOutOfStack
    do: [ :ex | 'error printing: ' , ex description ].
  self populateChildNodesFor: object ofClass: objectClass