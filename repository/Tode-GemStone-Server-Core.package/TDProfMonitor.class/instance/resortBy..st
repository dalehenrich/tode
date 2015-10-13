sorting
resortBy: aString
  "not optimal, but hey more work is planned"

  sortKey := aString.
  profMonitorEntries := self objectCreationTally
    ifTrue: [ 
      ((profMonitor results at: 1) sortDescending: sortKey)
        collect: [ :each | 
          TDProfMonitorClassTallyEntry new
            profMonEntry: each;
            profMon: self;
            yourself ] ]
    ifFalse: [ 
      ((profMonitor results at: 1) sortDescending: sortKey)
        collect: [ :each | 
          TDProfMonitorEntry new
            profMonEntry: each;
            profMon: self;
            yourself ] ]