global lookup
classOrganizer
  self username ifNil: [ ^ super classOrganizer ].
  ^ ClassOrganizer
    newWithRoot: (self globalNamed: 'Object')
    forUserId: self username