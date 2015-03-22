*tode-gemstone-core2x
buBackup: backupPath safely: safely
  | vs |
  vs := System voteState.
  Transcript
    cr;
    show: '---Starting backup to ' , backupPath printString , ' (';
    show: TimeStamp now asString;
    show: ')'.
  self fullBackupTo: backupPath  safely: safely.
  self class lastBackup: backupPath.
  Transcript
    cr;
    show: '---Finished backup to ' , LastBackup.
  ^ backupPath
