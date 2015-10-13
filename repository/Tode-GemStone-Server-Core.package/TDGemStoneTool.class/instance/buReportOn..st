bu
buReportOn: stream
  | entries snapshotEntries |
  entries := self buEntries.
  self options
    at: 'dir'
    ifPresent: [ snapshotEntries := #() ]
    ifAbsent: [ snapshotEntries := self snapshotEntries ].
  self buReport: entries snapshot: snapshotEntries on: stream