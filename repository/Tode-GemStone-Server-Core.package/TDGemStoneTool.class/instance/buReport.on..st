bu
buReport: entries on: stream
  stream
    nextPutAll: 'Last Restore: ' , LastRestore asString;
    cr;
    nextPutAll: 'Last Backup:  ' , LastBackup asString;
    cr.
  entries
    do: [ :entry | 
      stream
        nextPutAll: entry modificationTime printString , ' -- ' , entry name;
        cr ]