as yet unclassified
buBackup: backupPath
  Transcript
    cr;
    show: '---Starting backup to ' , backupPath printString , ' (';
    show: TimeStamp now asString;
    show: ')'.
  self fullBackupTo: backupPath.
  Transcript
    cr;
    show: '---Finished backup to ' , backupPath printString , ' (';
    show: TimeStamp now asString;
    show: ')'.
  ^ backupPath