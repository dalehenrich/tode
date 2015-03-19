bu
busnapshot
  "
  bu [--dir=<snapshot-directory>] snapshot [--suspend=<minutes>] \
                                           <snapshot-file-extension>
"

  | suspendInMinutes snapshotPath |
  self getSubcommandOptsMixedLongShort: {#('suspend' nil #'required')}.
  subOptions
    at: 'suspend'
    ifPresent: [ :arg | suspendInMinutes := arg asNumber ]
    ifAbsent: [ suspendInMinutes := 15 ].
  snapshotPath := self resolveSnapshotPath: ''.
  [ 
  System checkpointStatus
    ifTrue: [ self error: 'Checkpoints currently suspended. Please wait and try again.' ].
  System suspendCheckpointsForMinutes: suspendInMinutes.
  self
    halt:
      'Here is where I need to a) find the extent directory and b) copy the extents into the snapshotPath directory'.
  System checkpointStatus
    ifFalse: [ 
      self
        error:
          'Checkpoints were resumed before the extent copies were completed. Extent copies have been deleted.' ] ]
    ensure: [ System resumeCheckpoints ]