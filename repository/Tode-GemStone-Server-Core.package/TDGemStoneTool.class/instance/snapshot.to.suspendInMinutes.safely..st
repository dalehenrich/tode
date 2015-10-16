bu
snapshot: snapshotExtension to: snapshotPath suspendInMinutes: suspendInMinutes safely: safely
  | snapshots |
  [ 
  self checkpointsSuspended
    ifTrue: [ self error: 'Checkpoints currently suspended. Please wait and try again.' ].
  System startCheckpointSync
    ifFalse: [ 
      self
        error:
          'Could not start a checkpoint, See comment in System class>>startCheckpointSync for possible reasons for failure.' ].
  (System suspendCheckpointsForMinutes: suspendInMinutes)
    ifFalse: [ 
      self
        error:
          'Could not suspend checkpoints, See comment in System class>>suspendCheckpointsForMinutes: for possible reasons for failure.' ].
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
      performCopy := safely
        ifTrue: [ 
          "account for nil return value"
          ((GsFile existsOnServer: snapshotFilePath) == true) not ]
        ifFalse: [ true ].
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
      snapshots do: [ :snapshotFilePath | GsFile removeServerFile: snapshotFilePath ].
      self
        error:
          'Checkpoints were resumed before the extent copies were completed. Extent copies have been deleted.' ] ]
    ensure: [ System resumeCheckpoints ].
  ^ snapshots