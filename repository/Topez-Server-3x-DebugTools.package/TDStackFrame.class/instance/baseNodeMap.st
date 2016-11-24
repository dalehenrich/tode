as yet unclassified
baseNodeMap
  | map hasSelf |
  map := Dictionary new.
  map
    add: '(context)' -> #'method';
    add: '(receiver)' -> #'rawReceiver';
    add: '(varContext)' -> #'varContext';
    yourself.
  hasSelf := self argAndTempNames includes: 'self'.
  self isMethodForBlock
    ifTrue: [ 
      hasSelf
        ifFalse: [ 
          self rawSelf
            ifNil: [ 
              self varContext
                ifNil: [ 
                  (self rawReceiver isKindOf: ExecBlock)
                    ifTrue: [ map add: '(self)' -> #'blockSelfValue' ] ]
                ifNotNil: [ map add: '(self)' -> #'rawSelf' ] ]
            ifNotNil: [ map add: '(self)' -> #'rawSelf' ] ].
      map
        add: '(homeMethod)' -> #'homeMethod';
        yourself ]
    ifFalse: [ 
      hasSelf
        ifFalse: [ 
          map
            add: '(self)' -> #'rawSelf';
            yourself ] ].
  ^ map