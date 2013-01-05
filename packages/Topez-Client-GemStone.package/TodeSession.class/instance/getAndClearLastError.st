private gci calls
getAndClearLastError
  false
    ifTrue: [ ^ self library getAndClearLastError ].
  topez ifNil: [ ^ self library getAndClearLastError ].
  ^ self library getAndClearLastErrorUsingSton: self