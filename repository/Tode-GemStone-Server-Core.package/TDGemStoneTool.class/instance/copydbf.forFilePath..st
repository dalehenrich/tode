bu
copydbf: args forFilePath: filePath
  | copyDbfCommand |
  copyDbfCommand := (GsFile _expandEnvVariable: 'GEMSTONE' isClient: false)
    , '/bin/copydbf ' , args , ' ' , filePath.
  ^ self performOnServer: copyDbfCommand logging: true