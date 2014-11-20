*tode-gemstone-core2x
buBackup: backupPath
  | vs |
  vs := System voteState.
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