menu actions
cloneWindowMenuAction: listElement selectionIndex: selectionIndex
  "instead of cloning the window, open a new instance of the TDBrowser ... no interesting shared state"

  | browser |
  browser := TDTestBrowser new
    topez: topez;
    windowLabel: windowLabel;
    yourself.
  testSuite ifNotNil: [ browser testSuite: testSuite ].
  testSuiteBlock ifNotNil: [ browser testSuiteBlock: testSuiteBlock ].
  ^ browser open