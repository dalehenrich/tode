as yet unclassified
renderNameAttributesFor: results elementName: elementName
  ^ (elementName = 'errors' and: [ results errors size > 0 ])
    ifTrue: [ 
      {(TextColor color: Color red).
      (TextEmphasis bold)} ]
    ifFalse: [ 
      (elementName = 'failures' and: [ results failures size > 0 ])
        ifTrue: [ 
          {(TextColor color: Color orange).
          (TextEmphasis bold)} ]
        ifFalse: [ 
          (elementName = 'passed' and: [ results passed size > 0 ])
            ifTrue: [ 
              {(TDNode smalltalkTextColor).
              (TextEmphasis bold)} ]
            ifFalse: [ {(TextColor color: Color gray)} ] ] ]