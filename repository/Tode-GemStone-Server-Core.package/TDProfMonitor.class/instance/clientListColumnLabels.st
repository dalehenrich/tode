as yet unclassified
clientListColumnLabels
  ^ sortKey = 'tally'
    ifTrue: [ 
      {'tally         ms      % class and method name'.
      '----- ---------- ------ ---------------------'} ]
    ifFalse: [ 
      {'total        ms      % class and method name'.
      '----- ---------- ------ ---------------------'} ]