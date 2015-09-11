cut copy paste
removeFromSystem: topez
  "for the non-current class, it is sufficient to remove the class from the class history, but for the current version one must remove the class from the system ... if one intends to remove the current version and replace the class with an older version ... that' even harder"

  | clsTool |
  clsTool := topez toolInstanceFor: 'cls'.
  self classHistory current == self theClass
    ifTrue: [ 
      self classHistory size = 1
        ifTrue: [ 
          "just remove the class"
          self
            notify:
              'You are removing the only version of the class '
                , self className asString printString.
          ^ super removeFromSystem: topez ].
      self
        notify:
          'You are removing the current version of the class '
            , self className asString printString
            ,
              '. Since this class has a previous version, the previous version of the class will be promoted to the current version.' ].
  ^ clsTool clsRemoveClassFromClassHistory: self theClass