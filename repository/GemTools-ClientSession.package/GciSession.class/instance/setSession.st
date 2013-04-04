private gci calls
setSession
  number == nil
    ifTrue: [ ^ self error: 'Session no longer logged in.' ].
  self library critical: [ :lib | lib apiGciSetSessionId: number ]