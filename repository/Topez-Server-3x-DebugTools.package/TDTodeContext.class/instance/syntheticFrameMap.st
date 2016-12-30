client list element
syntheticFrameMap
  | map |
  map := Dictionary new.
  (self argAndTempNames includes: 'self')
    ifFalse: [ (self isMethodForBlock or: [ self receiver isKindOf: ExecBlock ])
        ifTrue: [ map add: 'self' -> #'blockSelf' ]
        ifFalse: [ map add: 'self' -> #'frameSelf' ] ].
  map add: '(thisContext)' -> #'thisContext'.
  ^ map