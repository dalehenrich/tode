bu
buBackup: backupPath safely: safely uncompressed: uncompressed
  | theBackupPath |
  self systemIsVoting
    ifTrue: [ ^ 'Please wait until system is no longer voting and try again' ].
  Transcript
    cr;
    show: '---Starting backup to ' , backupPath printString , ' (';
    show: TimeStamp now asString;
    show: ')'.
  theBackupPath := uncompressed
    ifTrue: [ backupPath ]
    ifFalse: [ 
      | postFix |
      postFix := '.gz'.
      (backupPath endsWith: postFix)
        ifTrue: [ backupPath ]
        ifFalse: [ 
          ".gz automatically added to filename during compressed backup"
          backupPath , postFix ] ].
  self fullBackupTo: theBackupPath safely: safely uncompressed: uncompressed.
  self class lastBackup: theBackupPath.
  Transcript
    cr;
    show: '---Finished backup to ' , LastBackup.
  ^ theBackupPath