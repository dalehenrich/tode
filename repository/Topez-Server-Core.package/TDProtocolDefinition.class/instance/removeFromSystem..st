cut copy paste
removeFromSystem: topez
  | clsTool |
  clsTool := topez toolInstanceFor: 'cls'.
  clsTool protocol: self theBehavior remove: {(self categoryName)}.
  ^ true