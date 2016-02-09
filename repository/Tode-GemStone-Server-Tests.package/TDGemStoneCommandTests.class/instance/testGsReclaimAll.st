tests
testGsReclaimAll
  self
    evaluateCommandString: 'gs --help reclaimAll';
    evaluateCommandString: 'gs reclaimAll';
    yourself