testing
isActive
  isActive
    ifNil: [ 
      self entry
        ifNil: [ isActive := false ]
        ifNotNil: [ isActive := self entry status includes: #'active' ] ].
  ^ isActive