as yet unclassified
createTmpFileWith: fileContents
  | file filename |
  filename := '/tmp/commitMessage'.
  [ 
  | count |
  file := GsFile openWriteOnServer: filename.
  (count := file nextPutAll: fileContents) ifNil: [ self error: 'failed write' ] ]
    ensure: [ file close ].
  ^ filename