as yet unclassified
objectPrintString
  ^ [ self object printString ]
    on: Error
    do: [ :ex | 'error printing' ]