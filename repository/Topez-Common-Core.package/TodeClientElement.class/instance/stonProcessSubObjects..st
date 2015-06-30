ston
stonProcessSubObjects: block
  "#stonInstVarNames are the only instance variables that need to be processed..."

  self stonInstVarNames
    do: [ :ivName | self instVarNamed: ivName put: (block value: (self instVarNamed: ivName)) ]