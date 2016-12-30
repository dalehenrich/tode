client list element
syntheticFrameMap
  | map |
  map := Dictionary new.
  map add: '(receiver)' -> #'receiver'.
  (self isMethodForBlock or: [ self receiver isKindOf: ExecBlock ])
    ifTrue: [ map add: '(self)' -> #'blockSelf' ].
  self varContext ifNotNil: [ map add: '(varContext)' -> #'varContext' ].
  ^ map