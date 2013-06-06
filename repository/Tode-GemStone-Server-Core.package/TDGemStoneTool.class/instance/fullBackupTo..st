as yet unclassified
fullBackupTo: backupPath
  | backupFilename backupDirName backupDir result |
  ServerFileDirectory
    splitName: backupPath
    to: [ :dirPath :filename | 
      backupDirName := dirPath.
      backupFilename := filename ].
  backupDir := ServerFileDirectory on: backupDirName.
  (backupDir fileExists: backupFilename)
    ifTrue: [ backupDir deleteFileNamed: backupFilename ].
  System commitTransaction.
  result := SystemRepository fullBackupTo: backupPath.
  result == true
    ifFalse: [ ^ self error: 'Could not complete the backup: ' , result ].	"we have been left outside of transaction in manual
	 transaction mode"
  System transactionMode: #'autoBegin'.
  ^ true