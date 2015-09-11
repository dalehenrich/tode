as yet unclassified
browseTestSuiteBlock: suiteBlock label: label
  ^ (TDTestBrowser new
    topez: topez;
    testSuiteBlock: suiteBlock;
    windowName: #'testBrowser';
    windowLabel: label;
    yourself) open