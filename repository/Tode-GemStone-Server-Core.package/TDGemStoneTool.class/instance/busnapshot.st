bu
busnapshot
  "
  bu [--dir=<snapshot-directory>] snapshot [--suspend=<minutes>] \
                                           <snapshot-file-extension>
"

  | suspendInMinutes snapshotPath snapshotExtension |
  self getSubcommandOptsMixedLongShort: {#('suspend' nil #'required')}.
  subOptions
    at: 'suspend'
    ifPresent: [ :arg | suspendInMinutes := arg asNumber ]
    ifAbsent: [ suspendInMinutes := 15 ].
  snapshotPath := self resolveSnapshotPath: ''.
  snapshotExtension := subArguments at: 1.
  [ 
  self checkpointsSuspended
    ifTrue: [ self error: 'Checkpoints currently suspended. Please wait and try again.' ].
  System suspendCheckpointsForMinutes: suspendInMinutes.
  SystemRepository fileNames
    do: [ :extentPath | 
      | extent extentName snapshotName |
      extent := ServerFileDirectory on: extentPath.
      snapshotName := extentName := extent localName.
      (extentName endsWith: '.dbf')
        ifTrue: [ 
          snapshotName := (extentName copyFrom: 1 to: extentName size - 3)
            , snapshotExtension ].
      System
        performOnServer:
          'cp ' , extentPath , ' ' , snapshotPath , '/' , snapshotName ].
  self checkpointsSuspended
    ifFalse: [ 
      self
        error:
          'Checkpoints were resumed before the extent copies were completed. Extent copies have been deleted.' ] ]
    ensure: [ System resumeCheckpoints ]