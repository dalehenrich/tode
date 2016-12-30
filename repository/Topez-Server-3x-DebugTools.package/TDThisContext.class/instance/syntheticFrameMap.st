client list element
syntheticFrameMap
  | map |
  map := Dictionary new.
  parentFrame next ifNotNil: [ map add: '(sender)' -> #'sender' ].
  map add: '(method)' -> #'gsMethod'.
  (self argAndTempNames includes: 'self')
    ifFalse: [ (self isMethodForBlock or: [ self receiver isKindOf: ExecBlock ])
        ifTrue: [ map add: 'self' -> #'blockSelf' ]
        ifFalse: [ map add: 'self' -> #'frameSelf' ] ].
  self isMethodForBlock
    ifTrue: [ map add: '(homeMethod)' -> #'homeMethod'.
      map add: '(receiver)' -> #'nilValue' ]
    ifFalse: [ map add: '(receiver)' -> #'receiver' ].
  self varContext ifNotNil: [ map add: '(varContext)' -> #'varContext' ].
  map add: '(ipOffset)' -> #'ipOffset'.
  map add: '(closureOrNil)' -> #'closureOrNil'.
  ^ map