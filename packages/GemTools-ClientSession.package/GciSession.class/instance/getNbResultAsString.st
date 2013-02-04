private gci calls
getNbResultAsString
  | result oopType |
  result := self getNbResult.
  result isInteger
    ifFalse: [ 
      (result isKindOf: TZTopezNotification)
        ifTrue: [ ^ result exceptionProxy ].
      ^ result ].
  oopType := self library oopTypeFromInteger: result.
  ^ self library critical: [ :lib | lib fetchChars: oopType ]