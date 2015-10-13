bu
busnapshot
  "
  bu [--dir=<snapshot-directory>] snapshot [--safely] [--suspend=<minutes>] \
                                           <snapshot-file-extension>
"

  | suspendInMinutes snapshotPath snapshotExtension snapshots safely |
  self
    getSubcommandOptsMixedLongShort:
      {#('suspend' nil #'required').
      #('safely' nil #'none')}.
  subOptions
    at: 'suspend'
    ifPresent: [ :arg | suspendInMinutes := arg asNumber ]
    ifAbsent: [ suspendInMinutes := 15 ].
  subOptions
    at: 'safely'
    ifPresent: [ :ignored | safely := true ]
    ifAbsent: [ safely := false ].
  snapshotPath := self resolveSnapshotPath: ''.
  snapshotExtension := subArguments at: 1.
  ^ self
    snapshot: snapshotExtension
    to: snapshotPath
    suspendInMinutes: suspendInMinutes
    safely: safely