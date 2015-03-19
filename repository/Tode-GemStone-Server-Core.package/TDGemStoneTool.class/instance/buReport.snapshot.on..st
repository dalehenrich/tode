bu
buReport: entries snapshot: snapshotEntries on: stream
  stream
    nextPutAll: 'Last Restore: ' , LastRestore asString;
    cr;
    nextPutAll: 'Last Backup:  ' , LastBackup asString;
    cr.
  stream
    nextPutAll: 'Backups:';
    cr.
  entries
    do: [ :entry | 
      stream
        nextPutAll: entry modificationTime printString , ' -- ' , entry name;
        cr ].
  snapshotEntries isEmpty not
    ifTrue: [ 
      stream
        nextPutAll: 'Snapshots:';
        cr.
      snapshotEntries
        do: [ :entry | 
          stream
            nextPutAll: entry modificationTime printString , ' -- ' , entry name;
            cr ] ]