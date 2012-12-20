as yet unclassified
installHalosOn: aTDTopezServer
  aTDTopezServer
    installHalo: '.debug' block: (self haloExceptionBlock: aTDTopezServer);
    installHalo: '.processes' block: (self haloProcessesBlock: aTDTopezServer);
    yourself