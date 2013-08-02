as yet unclassified
bulist
  "bu list"

  | entries stream |
  entries := ((ServerFileDirectory on: self class backupDirectoryName) entries
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