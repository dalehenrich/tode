synthetic fields
baseNodeMap
  | map hasSelf |
  map := Dictionary new.
  map add: '(sender)' -> #'next'.
  map add: '(method)' -> #'method'.
  hasSelf := self argAndTempNames includes: 'self'.
  self isMethodForBlock
    ifTrue: [ hasSelf
        ifFalse: [ self rawSelf
            ifNil: [ self varContext ifNil: [ (self rawReceiver isKindOf: ExecBlock)
                    ifTrue: [ map add: 'self' -> #'blockSelfValue' ] ] ifNotNil: [ map add: 'self' -> #'rawSelf' ] ]
            ifNotNil: [ map add: 'self' -> #'rawSelf' ] ].
      map add: '(receiver)' -> #'nilValue'.
      map add: '(closureOrNil)' -> #'rawReceiver' ]
    ifFalse: [ hasSelf
        ifFalse: [ map
            add: '(self)' -> #'rawSelf';
            yourself ].
      map add: '(receiver)' -> #'rawReceiver'.
      map add: '(closureOrNil)' -> #'nilValue' ].
  ^ map