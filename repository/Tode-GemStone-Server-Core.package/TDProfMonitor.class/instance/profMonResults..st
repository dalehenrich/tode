as yet unclassified
profMonResults: aProfMonResults
  profMonResults := ((aProfMonResults at: 1) sortDescending: 'tally')
    collect: [ :each | 
      TDProfMonitorEntry new
        profMonEntry: each;
        profMon: self;
        yourself ]