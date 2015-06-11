as yet unclassified
profMonResults: aProfMonResults
  profMonResultAr := aProfMonResults.
  profMonResults := (aProfMonResults at: 1)
    collect: [ :each | 
      TDProfMonitorEntry new
        profMonEntry: each;
        profMon: self;
        yourself ].
  self resortBy: self sortKey