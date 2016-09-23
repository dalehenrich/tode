instance creation
sessionForStone: stonename userName: username password: password
  | session sessionDescription |
  (FileDirectory on: '$GS_HOME/sys/local/sessions/')
    readOnlyFileNamed: stonename
    do: [ :fs | sessionDescription := (STON fromString: fs contents) asTDSessionDescription ].
  session := TDGsExternalSession
    gemNRS: sessionDescription gemNRS
    stoneNRS: sessionDescription stoneNRS
    username: username
    password: password.
  ^ session