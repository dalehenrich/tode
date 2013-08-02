as yet unclassified
lastRestore: backupPath
  | entry |
  entry := (ServerFileDirectory on: backupPath) directoryEntryFor: backupPath.
  LastRestore := entry modificationTime printString , ' -- ' , entry name , ' ('
    , TimeStamp now asString , ')'.
  System commitTransaction.
  ^ LastRestore