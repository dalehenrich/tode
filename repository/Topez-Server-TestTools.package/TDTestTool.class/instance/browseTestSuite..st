as yet unclassified
browseTestSuite: suite
  ^ (TDTestBrowser new
    topez: topez;
    testSuite: suite;
    windowName: #'testBrowser';
    windowLabel: suite name;
    yourself) open