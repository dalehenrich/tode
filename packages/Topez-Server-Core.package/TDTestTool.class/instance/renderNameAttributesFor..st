as yet unclassified
renderNameAttributesFor: results
  ^ results errors size > 0
    ifTrue: [ 
      {(TextColor color: Color red).
      (TextEmphasis bold)} ]
    ifFalse: [ 
      results failures size > 0
        ifTrue: [ 
          {(TextColor color: Color orange).
          (TextEmphasis bold)} ]
        ifFalse: [ 
          {(TDNode smalltalkTextColor).
          (TextEmphasis bold)} ] ]