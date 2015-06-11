as yet unclassified
clientListHeading
  | elapsed |
  elapsed := self sampling == #'cpu'
    ifTrue: [ 'elapsed CPU time: ' , self elapsedTime asString , ' ms' ]
    ifFalse: [ 'elapsed REAL time: ' , self elapsedTime asString , ' ms' ].
  profMonResultAr size <= 2
    ifTrue: [ ^ {elapsed} ].
  ^ {elapsed.
  (profMonResultAr at: 4)}