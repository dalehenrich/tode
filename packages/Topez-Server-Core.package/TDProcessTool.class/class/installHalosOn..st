as yet unclassified
installHalosOn: aTDTopezServer
  aTDTopezServer
    installHalo: '.processes' block: (self haloProcessesBlock: aTDTopezServer);
    installHalo: '.debugProcesses' block: (self haloDebugProcessesBlock: aTDTopezServer);
    yourself