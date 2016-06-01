as yet unclassified
objectPrintString
  "used for printing nodeName and window labels ... limit the size of the string to a manageable size"

  ^ [ self object printStringTodeLimitedTo: TDShellTool characterLimit ]
    on: self printExceptionSet
    do: [ :ex | 'error printing' ]