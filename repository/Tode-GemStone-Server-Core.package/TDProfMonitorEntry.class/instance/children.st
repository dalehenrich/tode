as yet unclassified
children
  | children |
  children := profMonEntry children.
  children ifNil: [ ^ #() ].
  ^ children
    collect: [ :each | 
      TDProfMonitorEntry new
        profMon: profMon;
        profMonEntry: each;
        master: self;
        yourself ]