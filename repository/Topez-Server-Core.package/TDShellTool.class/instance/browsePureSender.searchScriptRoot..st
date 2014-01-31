as yet unclassified
browsePureSender: selectorToken searchScriptRoot: path
  "browse [--scriptPath=<tode-path>] psender [#]<selector>"

  | selector |
  selector := self resolveSelector: selectorToken.
  ^ (TDLeafNodeBrowser new
    topez: topez;
    messagePattern: selector asString;
    windowLabel: 'Senders of ' , selector printString , ' for' , path;
    leafNodesBlock: [ self findPureSender: selectorToken searchScriptRoot: path ];
    yourself) open