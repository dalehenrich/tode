client list
clientListHeading
  | heading line |
  heading := {('TALLYING: ' , self tallying)}.
  line := self sampling == #'cpu'
    ifTrue: [ 'elapsed CPU time: ' , self elapsedTime asString , ' ms' ]
    ifFalse: [ 'elapsed REAL time: ' , self elapsedTime asString , ' ms' ].
  heading add: line.
  self objectCreationTally
    ifFalse: [ 
      | res |
      res := profMonitor results.
      res size > 2
        ifTrue: [ heading add: (res at: 4) ] ].
  heading add: ''.
  ^ heading , self clientListColumnLabels