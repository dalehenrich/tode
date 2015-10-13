accessing
serverTodeRoot
  serverTodeRoot ifNotNil: [ ^ serverTodeRoot ].
  ^ self sessionDescription serverTodeRoot