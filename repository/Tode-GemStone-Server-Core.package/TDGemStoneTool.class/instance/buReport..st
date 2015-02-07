bu
buReport: entries
  | stream |
  stream := WriteStream on: String new.
  stream
    nextPutAll: 'Last Restore: ' , LastRestore asString;
    cr;
    nextPutAll: 'Last Backup:  ' , LastBackup asString;
    cr.
  self buReport: entries on: stream.
  ^ stream