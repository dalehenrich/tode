as yet unclassified
objectPrintString
  ^ [ self object printString ]
    on: self printExceptionSet
    do: [ :ex | 'error printing' ]