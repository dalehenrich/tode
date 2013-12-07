ston
stonProcessSubObjects: block
  "name and contents are the only instance variables that need to be processed..."

  #(#'name' #'contents')
    do: [ :ivName | 
      | offset |
      offset := self class _ivOffsetOf: ivName.
      self instVarAt: offset put: (block value: (self instVarAt: offset)) ]