private gci calls
getAndClearLastError
  true
    ifTrue: [ ^ self library getAndClearLastError ].
  topez ifNil: [ ^ self library getAndClearLastError ].
  ^ self library getAndClearLastErrorUsingSton: self