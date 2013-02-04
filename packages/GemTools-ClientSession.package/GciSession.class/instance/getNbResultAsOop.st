private gci calls
getNbResultAsOop
  | result |
  result := self getNbResult.
  result isInteger
    ifFalse: [ 
      (result isKindOf: TZTopezNotification)
        ifTrue: [ ^ result exceptionProxy ].
      ^ result ].
  ^ self library oopTypeFromInteger: result