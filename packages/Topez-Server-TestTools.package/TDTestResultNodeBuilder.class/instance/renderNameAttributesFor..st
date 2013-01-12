as yet unclassified
renderNameAttributesFor: elementName
  ^ (elementName = 'errors' and: [ self object errors size > 0 ])
    ifTrue: [ 
      {(TextColor color: Color red).
      (TextEmphasis bold)} ]
    ifFalse: [ 
      ((elementName = 'failures' and: [ self object failures size > 0 ])
        or: [ elementName = 'unexpectedPassed' and: [ self object unexpectedPasses size > 0 ] ])
        ifTrue: [ 
          {(TextColor color: Color orange).
          (TextEmphasis bold)} ]
        ifFalse: [ 
          ((elementName = 'passed' and: [ self object passed size > 0 ])
            or: [ elementName = 'expectedDefects' and: [ self object expectedDefects size > 0 ] ])
            ifTrue: [ 
              {(TDNode smalltalkTextColor).
              (TextEmphasis bold)} ]
            ifFalse: [ {(TextColor color: Color gray)} ] ] ]