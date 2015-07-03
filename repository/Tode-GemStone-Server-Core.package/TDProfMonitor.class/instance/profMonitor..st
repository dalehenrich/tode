accessing
profMonitor: aProfMonitor
  | endTime startTime |
  endTime := aProfMonitor endTime.
  startTime := aProfMonitor startTime.
  (aProfMonitor respondsTo: #'sampling')
    ifTrue: [ sampling := aProfMonitor perform: #'sampling' ].
  traceObjCreation := aProfMonitor instVarNamed: #'traceObjCreation'.
  profMonitor := aProfMonitor.
  endTime >= startTime
    ifTrue: [ elapsedTime := endTime - startTime ]
    ifFalse: [ elapsedTime := endTime + (16rffffffff - startTime) ].
  self buildObjectCreationEntries