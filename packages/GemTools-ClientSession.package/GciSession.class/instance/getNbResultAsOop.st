private gci calls
getNbResultAsOop
  | result |
  result := self getNbResult.
  result isInteger
    ifFalse: [ ^ result ].
  ^ self library oopTypeFromInteger: result