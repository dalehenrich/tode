as yet unclassified
blockSelfValue
  (self rawReceiver isKindOf: ExecBlock)
    ifTrue: [ ^ self rawReceiver selfValue ].
  ^ nil