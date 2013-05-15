as yet unclassified
bubackup
  "bu backup <backup-name>
      backup @<backup-name-path>
  "

  | backupPath |
  backupPath := self resolveBackupPath: (tokens at: 2).
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
          (TDSmalltalkLeafNode new
            name: filename;
            contents: '"' , TimeStamp now asString , '"' , backupPath asString;
            yourself) ].
  Transcript
    cr;
    show: '---Finished backup to ' , backupPath printString , ' (';
    show: TimeStamp now asString;
    show: ')'.
  ^ backupPath