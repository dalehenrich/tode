client list
clientListColumnLabels
  ^ self objectCreationTally
    ifTrue: [ 
      {('     ' , sortKey , '     % class name').
      '---------- ----- ---------------------'} ]
    ifFalse: [ 
      {('     ' , sortKey , '         ms     % class and method name').
      '---------- ---------- ----- ---------------------'} ]