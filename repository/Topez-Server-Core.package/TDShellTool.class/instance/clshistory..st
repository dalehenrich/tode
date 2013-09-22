as yet unclassified
clshistory: clsName
  ^ (Smalltalk classNamed: clsName)
    ifNil: [ self error: 'class ' , clsName printString , ' not found' ]
    ifNotNil: [ :class | 
      | count |
      count := 0.
      class classHistory reversed
        collect: [ :cls | 
          | clsName |
          clsName := count == 0
            ifTrue: [ cls name asString ]
            ifFalse: [ cls name asString , ' [' , count printString , ']' ].
          count := count + 1.
          TDClassHistoryDefinition theClass: cls className: clsName ] ]