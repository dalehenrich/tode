cut copy paste
removeFromSystem: topez
  | clsTool |
  clsTool := topez toolInstanceFor: 'cls'.
  clsTool clsremove: self theClass.
  ^ true