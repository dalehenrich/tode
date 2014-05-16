testing
isActive
  self entry
    ifNil: [ ^ false ]
    ifNotNil: [ ^ self entry status includes: #'active' ]