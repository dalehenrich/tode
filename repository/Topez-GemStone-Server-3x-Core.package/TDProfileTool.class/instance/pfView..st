smalltalk api
pfView: label
  ^ self
    pfView: self profMonitor
    label: label
    limit: self defaultTallyLimit
    sortKey: self defaultSortKey