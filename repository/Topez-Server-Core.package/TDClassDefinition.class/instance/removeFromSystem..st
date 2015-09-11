cut copy paste
removeFromSystem: topez
  | clsTool |
  self classHistory current == self theClass
    ifFalse: [ 
      self
        error:
          'Attempting to remove an old version of a class ... use `cls history` browser to remove old versions of classes' ].
  clsTool := topez toolInstanceFor: 'cls'.
  clsTool clsremove: self theClass.
  ^ true