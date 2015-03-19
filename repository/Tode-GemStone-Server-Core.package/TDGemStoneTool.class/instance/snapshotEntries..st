bu
snapshotEntries: backupPath
  | backupDirPath entries |
  backupDirPath := self resolveSnapshotPath: backupPath.
  entries := ((ServerFileDirectory on: backupDirPath) entries
    select: [ :entry | entry isDirectory not ])
    sorted: [ :a :b | a modificationTime <= b modificationTime ].
  ^ entries