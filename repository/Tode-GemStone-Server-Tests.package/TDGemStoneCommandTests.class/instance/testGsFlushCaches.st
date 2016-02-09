tests
testGsFlushCaches
  self
    evaluateCommandString: 'gs --help flushCaches';
    evaluateCommandString: 'gs flushCaches';
    yourself