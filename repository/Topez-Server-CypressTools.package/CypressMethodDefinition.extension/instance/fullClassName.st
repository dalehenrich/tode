*topez-server-cypresstools
fullClassName
  "Using #class selector for classes for backwards compatibility"

  ^ self classIsMeta
    ifFalse: [ self className ]
    ifTrue: [ 
      self actualClass isNil
        ifFalse: [ self className , ' class' ]
        ifTrue: [ self className , ' classSide' ] ]