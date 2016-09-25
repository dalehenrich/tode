instance creation
writeDiffsFrom: packageOperationsMap to: stream
  ^ self new
    stream: stream;
    writePackageOperations: (packageOperationsMap at: 'operations');
    yourself