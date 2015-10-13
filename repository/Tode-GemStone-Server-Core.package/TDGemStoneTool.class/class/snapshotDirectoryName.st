bu
snapshotDirectoryName
  SnapshotDirectoryName
    ifNil: [ self snapshotDirectoryName: self defaultSnapshotDirectoryName ].
  ^ SnapshotDirectoryName