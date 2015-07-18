sorting
resortByClass: aSortKey
  "not optimal, but hey more work is planned"

  sortKey := aSortKey.
  profMonitorEntries := objCreationClasses
    collect: [ :cls | 
      TDProfMonitorClassEntry new
        tallyClass: cls;
        tally: (objCreationCounts at: cls);
        profMon: self;
        yourself ].
  profMonitorEntries := sortKey = 'tallyClassName'
    ifTrue: [ profMonitorEntries sortAscending: sortKey ]
    ifFalse: [ profMonitorEntries sortDescending: sortKey ]