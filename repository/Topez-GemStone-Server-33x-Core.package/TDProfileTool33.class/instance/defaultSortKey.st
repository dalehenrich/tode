private
defaultSortKey
  (self profMonitor isNil
    or: [ (self profMonitor _tallyInfo at: 1) trimBoth = 'tally' ])
    ifTrue: [ ^ 'total' ].
  ^ 'tally'