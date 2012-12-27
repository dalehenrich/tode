accessing
shellWindows
  shellWindows ifNil: [ shellWindows := IdentitySet new ].
  ^ shellWindows