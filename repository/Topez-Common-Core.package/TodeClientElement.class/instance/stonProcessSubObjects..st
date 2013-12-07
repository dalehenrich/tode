ston
stonProcessSubObjects: block
  "#stonInstVarNames are the only instance variables that need to be processed..."

  self stonInstVarNames
    do: [ :ivName | 
      | offset |
      offset := self class _ivOffsetOf: ivName.
      self instVarAt: offset put: (block value: (self instVarAt: offset)) ]