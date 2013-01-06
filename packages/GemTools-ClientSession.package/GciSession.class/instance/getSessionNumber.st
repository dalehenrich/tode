private gci calls
getSessionNumber
  number == nil
    ifTrue: [ ^ self error: 'Session no longer logged in.' ].
  ^ number