sorting
resortByClass
  "not optimal, but hey more work is planned"

  sortKey := 'tally'.
  profMonitorEntries := (objCreationClasses
    collect: [ :cls | 
      TDProfMonitorClassEntry new
        tallyClass: cls;
        tally: (objCreationCounts at: cls);
        profMon: self;
        yourself ])
    sortDescending: sortKey