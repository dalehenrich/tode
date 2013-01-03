private gci calls
getNbResultAsString
  | result oopType |
  result := self getNbResult.
  result isInteger
    ifFalse: [ 
      "must be an error notification"
      ^ result exceptionProxy ].
  oopType := self library oopTypeFromInteger: result.
  ^ self library fetchChars: oopType