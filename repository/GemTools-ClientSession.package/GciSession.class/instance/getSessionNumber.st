private gci calls
getSessionNumber
  number == nil
    ifTrue: [ ^ GciSessionNotLoggedInError signal].
  ^ number