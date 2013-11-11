as yet unclassified
stonrsync: sourcePaths to: destinationPath options: rsynOptions
  | rsync |
  rsync := TDSTONRsync new
    rsyncTool: self;
    rsyncOptions: self options;
    rsyncArgs: self arguments.
  rsync rsync: sourcePaths to: destinationPath