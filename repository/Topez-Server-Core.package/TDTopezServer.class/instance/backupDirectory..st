accessing
backupDirectory: aString
  Smalltalk
    at: #'TDGemStoneTool'
    ifPresent: [ :cls | 
      Transcript
        cr;
        show: aString.
      cls backupDirectoryName: aString ]