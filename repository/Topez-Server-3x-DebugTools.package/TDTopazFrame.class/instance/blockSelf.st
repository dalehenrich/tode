synthetic fields
blockSelf
  (self receiver isKindOf: ExecBlock)
    ifTrue: [ ^ self receiver selfValue ].
  ^ nil