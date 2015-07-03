accessing
profMonitorEntries
  profMonitorEntries ifNil: [ self resortBy: self sortKey ].
  ^ profMonitorEntries