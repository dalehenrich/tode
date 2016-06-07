class organizer
classOrganizer
  ^ self guestUser
    ifNil: [ ClassOrganizer cachedOrganizer ]
    ifNotNil: [ :guest | ClassOrganizer newWithRoot: Object forUserId: guest ]