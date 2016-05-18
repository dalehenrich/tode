accessing
profMonitorEntries
  | sampleDict tallySet entries |
  sampleDict := self profMon profMonitor results at: 2.
  tallySet := IdentitySet new.
  sampleDict
    keysAndValuesDo: [ :ar :d | 
      (ar at: 1) = tallyClass
        ifTrue: [ 
          d
            valuesDo: [ :d2 | 
              d2
                valuesDo: [ :e | 
                  (e respondsTo: #'cclass')
                    ifTrue: [ 
                      (e perform: #'cclass') isNil
                        ifFalse: [ tallySet add: e ] ] ] ] ] ].
  entries := (tallySet sortDescending: self sortKey)
    collect: [ :each | 
      TDProfMonitorObjectCreationEntry new
        profMonEntry: each;
        profMon: self;
        yourself ].
  ^ entries