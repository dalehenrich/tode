*topez-server-core
renderNameAttributesFor: elementName
  ^ (elementName = 'errors' and: [ self errors size > 0 ])
    ifTrue: [ 
      {(TextColor color: Color red).
      (TextEmphasis bold)} ]
    ifFalse: [ 
      ((elementName = 'failures' and: [ self failures size > 0 ])
        or: [ elementName = 'unexpectedPassed' and: [ self unexpectedPasses size > 0 ] ])
        ifTrue: [ 
          {(TextColor color: Color orange).
          (TextEmphasis bold)} ]
        ifFalse: [ 
          ((elementName = 'passed' and: [ self passed size > 0 ])
            or: [ elementName = 'expectedDefects' and: [ self expectedDefects size > 0 ] ])
            ifTrue: [ 
              {(TDNode smalltalkTextColor).
              (TextEmphasis bold)} ]
            ifFalse: [ {(TextColor color: Color gray)} ] ] ]