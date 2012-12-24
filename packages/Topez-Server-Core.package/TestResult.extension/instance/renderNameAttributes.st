*topez-server-core
renderNameAttributes
  ^ self errors size > 0
    ifTrue: [ 
      {(TextColor color: Color red).
      (TextEmphasis bold)} ]
    ifFalse: [ 
      self failures size > 0
        ifTrue: [ 
          {(TextColor color: Color orange).
          (TextEmphasis bold)} ]
        ifFalse: [ 
          {(TDNode smalltalkTextColor).
          (TextEmphasis bold)} ] ]