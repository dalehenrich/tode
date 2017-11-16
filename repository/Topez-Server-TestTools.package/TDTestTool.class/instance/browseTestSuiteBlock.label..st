as yet unclassified
browseTestSuiteBlock: suiteBlock label: label
  ^ (TDTestBrowser new
    topez: topez;
    testSuiteBlock: suiteBlock;
    windowLabel: label;
    yourself) open