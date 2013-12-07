as yet unclassified
rsync: sourcePaths to: destinationPath options: rsynOptions
  | rsync |
  rsync := TDSTONRsync new
    rsyncTool: self;
    rsyncOptions: self options;
    rsyncArgs: self arguments.
  rsync rsync: sourcePaths to: destinationPath.
  ^ rsync