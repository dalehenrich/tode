bu
busnapshot
  "
  bu [--dir=<snapshot-directory>] snapshot [--safely] [--suspend=<minutes>] \
                                           <snapshot-file-extension>
"

  | suspendInMinutes snapshotPath snapshotExtension snapshots |
  self
    getSubcommandOptsMixedLongShort:
      {#('suspend' nil #'required').
      #('safely' nil #'none')}.
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
  snapshots := {}.
  SystemRepository fileNames
    do: [ :extentPath | 
      | extent extentName snapshotName snapshotFilePath performCopy |
      extent := ServerFileDirectory on: extentPath.
      snapshotName := extentName := extent localName.
      (extentName endsWith: '.dbf')
        ifTrue: [ 
          snapshotName := (extentName copyFrom: 1 to: extentName size - 3)
            , snapshotExtension ].
      snapshotFilePath := snapshotPath , '/' , snapshotName.
      performCopy := subOptions
        at: 'safely'
        ifPresent: [ :ignored | 
          "account for nil return value"
          ((GsFile existsOnServer: snapshotFilePath) == true) not ]
        ifAbsent: [ true ].
      Transcript cr.
      performCopy
        ifTrue: [ 
          Transcript
            show:
              '---Starting snapshot to ' , (extentPath , ' ' , snapshotFilePath) printString
                , '(' , TimeStamp now asString , ')'.
          System performOnServer: 'cp ' , extentPath , ' ' , snapshotFilePath.
          snapshots add: snapshotFilePath.
          Transcript
            cr;
            tab;
            show:
                '---Finishing snapshot ' , TimeStamp now asString , ' -- ' , snapshotFilePath ]
        ifFalse: [ 
          self
            inform:
              'The snapshot file exists, --safely present, copy skipped for: '
                , snapshotFilePath printString ] ].
  self checkpointsSuspended
    ifFalse: [ 
      self
        error:
          'Checkpoints were resumed before the extent copies were completed. Extent copies have been deleted.' ] ]
    ensure: [ System resumeCheckpoints ].
  ^ snapshots