as yet unclassified
renderNameAttributesFor: results
  ^ results errors size > 0
    ifTrue: [ 
      {(TextColor color: Color red).
      (TextEmphasis bold)} ]
    ifFalse: [ 
      results failures size > 0
        ifTrue: [ 
          {(TextColor color: Color yellow).
          (TextEmphasis bold)} ]
        ifFalse: [ 
          {(TextColor color: Color green).
          (TextEmphasis bold)} ] ]