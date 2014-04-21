bu
bulist
  "
  bu [--dir=<backup-directory>] list
"

  | backupDirPath entries stream |
  backupDirPath := self resolveBackupPath: ''.
  entries := ((ServerFileDirectory on: backupDirPath) entries
    select: [ :entry | entry isDirectory not ])
    sorted: [ :a :b | a modificationTime <= b modificationTime ].
  stream := WriteStream on: String new.
  stream
    nextPutAll: 'Last Restore: ' , LastRestore asString;
    cr;
    nextPutAll: 'Last Backup:  ' , LastBackup asString;
    cr.
  entries
    do: [ :entry | 
      stream
        nextPutAll: entry modificationTime printString , ' -- ' , entry name;
        cr ].
  ^ TDCommandResult new
    displayText: stream contents asText;
    resultObject: entries;
    yourself