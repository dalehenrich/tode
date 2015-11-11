bu
busnapshot
  "
  bu [--dir=<snapshot-directory>] snapshot [--safely] [--commit] [--suspend=<minutes>] \
                                           <snapshot-file-extension>
"

  | suspendInMinutes snapshotPath snapshotExtension snapshots safely |
  self
    getSubcommandOptsMixedLongShort:
      {#('suspend' nil #'required').
      #('commit' nil #'none').
      #('safely' nil #'none')}.
  subOptions
    at: 'commit'
    ifPresent: [ :ignored | 
      System commitTransaction
        ifFalse: [ self error: 'Commit conflicts, snapshot aborted' ] ].
  subOptions
    at: 'suspend'
    ifPresent: [ :arg | suspendInMinutes := arg asNumber ]
    ifAbsent: [ suspendInMinutes := 15 ].
  subOptions
    at: 'safely'
    ifPresent: [ :ignored | safely := true ]
    ifAbsent: [ safely := false ].
  snapshotPath := self resolveSnapshotPath: ''.
  snapshotExtension := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument <snapshot-file-extension>. See `man bu snapshot` for details.' ].
  ^ self
    snapshot: snapshotExtension
    to: snapshotPath
    suspendInMinutes: suspendInMinutes
    safely: safely