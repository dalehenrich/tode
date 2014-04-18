as yet unclassified
objectPrintString
  ^ [ self object printString ]
    on: Error , AlmostOutOfStack
    do: [ :ex | 'error printing' ]