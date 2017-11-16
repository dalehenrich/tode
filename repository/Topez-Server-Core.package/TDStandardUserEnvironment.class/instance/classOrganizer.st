global lookup
classOrganizer
  ^ ClassOrganizer
    newWithRoot: (self globalNamed: 'Object')
    forUserId: self userId