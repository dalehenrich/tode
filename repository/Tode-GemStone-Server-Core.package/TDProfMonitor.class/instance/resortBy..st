as yet unclassified
resortBy: aString
  "no optimal, but hey more work is planned"

  sortKey := aString.
  profMonResults := ((profMonResults collect: [ :each | each profMonEntry ])
    sortDescending: sortKey)
    collect: [ :each | 
      TDProfMonitorEntry new
        profMonEntry: each;
        profMon: self;
        yourself ]