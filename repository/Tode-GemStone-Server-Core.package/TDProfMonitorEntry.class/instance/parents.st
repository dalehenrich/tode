as yet unclassified
parents
  | parents |
  parents := profMonEntry parents.
  parents ifNil: [ ^ #() ].
  ^ parents
    collect: [ :each | 
      TDProfMonitorEntry new
        profMon: profMon;
        profMonEntry: each;
        master: self;
        yourself ]