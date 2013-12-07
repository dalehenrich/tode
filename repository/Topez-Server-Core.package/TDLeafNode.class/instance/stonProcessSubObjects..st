ston
stonProcessSubObjects: block
  "name, contents, creationTime, and modificationTime are the only 
   instance variables that need to be processed..."

  #(#'name' #'contents' #'creationTime' #'modificationTime')
    do: [ :ivName | 
      | offset |
      offset := self class _ivOffsetOf: ivName.
      self instVarAt: offset put: (block value: (self instVarAt: offset)) ]