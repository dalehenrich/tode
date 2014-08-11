as yet unclassified
resortBy: aString
  "no optimal, but hey more work is planned"

  profMonResults := ((profMonResults collect: [ :each | each profMonEntry ])
    sortDescending: aString)
    collect: [ :each | 
      TDProfMonitorEntry new
        profMonEntry: each;
        profMon: self;
        yourself ]