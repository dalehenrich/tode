class organizer
classOrganizerFor: username
  | organizers |
  username
    ifNil: [ 
      "nil username indicates current user and that means use the standard cached ClassOrganizer"
      ^ ClassOrganizer cachedOrganizer ].
  organizers := (SessionTemps current
    at: self classOrganizerSessionTempsName
    otherwise: nil)
    ifNil: [ SessionTemps current at: self classOrganizerSessionTempsName put: Dictionary new ].
  ^ organizers
    at: username
    ifAbsent: [ 
      organizers
        at: username
        put: (ClassOrganizer newWithRoot: Object forUserId: username) ]