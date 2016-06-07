bu
buBackup: backupPath safely: safely uncompressed: uncompressed validate: validate
  | theBackupPath |
  self systemIsVoting
    ifTrue: [ ^ 'Please wait until system is no longer voting and try again' ].
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
  Transcript
    cr;
    show: '---Starting backup to ' , theBackupPath printString , ' (';
    show: TimeStamp now asString;
    show: ')'.
  self fullBackupTo: theBackupPath safely: safely uncompressed: uncompressed.
  self class lastBackup: theBackupPath.
  validate
    ifTrue: [ 
      Transcript
        cr;
        show: '---validating backup (';
        show: TimeStamp now asString;
        show: ')'.
      self buValidateReadableBackupFile: theBackupPath ].
  Transcript
    cr;
    show: '---Finished backup to ' , LastBackup.
  ^ theBackupPath