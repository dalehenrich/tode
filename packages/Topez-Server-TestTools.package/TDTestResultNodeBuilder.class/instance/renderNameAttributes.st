as yet unclassified
renderNameAttributes
  ^ self object errors size > 0
    ifTrue: [ 
      {(TextColor color: Color red).
      (TextEmphasis bold)} ]
    ifFalse: [ 
      self object failures size > 0
        ifTrue: [ 
          {(TextColor color: Color orange).
          (TextEmphasis bold)} ]
        ifFalse: [ 
          {(TDNode smalltalkTextColor).
          (TextEmphasis bold)} ] ]