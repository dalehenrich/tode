as yet unclassified
clshistory: theClass
  | count |
  count := 0.
  ^ theClass classHistory reversed
    collect: [ :cls | 
      | clsName |
      clsName := count == 0
        ifTrue: [ cls name asString ]
        ifFalse: [ cls name asString , ' [' , count printString , ']' ].
      count := count + 1.
      TDClassHistoryDefinition theClass: cls className: clsName ]