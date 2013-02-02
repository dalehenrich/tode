*topez-common-core
renderText: attribute on: textStream indent: indent
  attribute == #'display'
    ifTrue: [ 
      | displayPolicy |
      displayPolicy := TDDisplayPolicy new
        stream: textStream;
        yourself.
      self displayOn: displayPolicy ]
    ifFalse: [ textStream nextPutAll: self asString asText ]