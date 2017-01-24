as yet unclassified
browseTestSuite: suite
  ^ (TDTestBrowser new
    topez: topez;
    testSuite: suite;
    windowLabel: suite name;
    yourself) open