bu
lastBackup: backupPath
  | entry |
  entry := (ServerFileDirectory on: backupPath) directoryEntryFor: backupPath.
  LastBackup := entry modificationTime printString , ' -- ' , entry name.
  System commitTransaction.
  ^ LastBackup