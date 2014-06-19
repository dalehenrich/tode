bu
buBackup: backupPath
  | vs sessId |
  vs := System voteState.
  sessId := System sessionIdHoldingGcLock.
  (sessId ~= 0 or: [ vs > 0 and: [ vs < 4 ] ])
    ifTrue: [ ^ 'Please wait until system is no longer voting and try again' ].
  Transcript
    cr;
    show: '---Starting backup to ' , backupPath printString , ' (';
    show: TimeStamp now asString;
    show: ')'.
  self fullBackupTo: backupPath.
  self class lastBackup: backupPath.
  Transcript
    cr;
    show: '---Finished backup to ' , LastBackup.
  ^ backupPath