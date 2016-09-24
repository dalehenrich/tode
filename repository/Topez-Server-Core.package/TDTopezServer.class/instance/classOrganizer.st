class organizer
classOrganizer
  ^ self guestUser
    ifNil: [ ClassOrganizer cachedOrganizer ]
    ifNotNil: [ :guest | TDBehaviorReferenceDefinition classOrganizerFor: guest ]