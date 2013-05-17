as yet unclassified
bubackup
  "bu backup <backup-name>
      backup @<backup-name-path>
  "

  | backupPath |
  backupPath := (self resolveBackupPath: (tokens at: 2)) asString.
  Transcript
    cr;
    show: '---Starting backup to ' , backupPath printString , ' (';
    show: TimeStamp now asString;
    show: ')'.
  self fullBackupTo: backupPath.
  ServerFileDirectory
    splitName: backupPath
    to: [ :dirPath :filename | 
      (topez lookup: self homePath)
        addChildNode:
          (TDTxtLeafNode new
            name: filename;
            contents:
                '"' , TimeStamp now asString , '"' , backupPath printString;
            yourself) ].
  Transcript
    cr;
    show: '---Finished backup to ' , backupPath printString , ' (';
    show: TimeStamp now asString;
    show: ')'.
  ^ backupPath