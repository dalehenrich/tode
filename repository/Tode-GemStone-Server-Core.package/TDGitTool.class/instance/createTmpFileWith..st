as yet unclassified
createTmpFileWith: fileContents
  | file filename |
  filename := '/tmp/commitMessage'.
  [ 
  file := GsFile openWriteOnServer: filename.
  file nextPutAll: fileContents ]
    ensure: [ file close ].
  ^ filename