as yet unclassified
browseSender: selectorToken searchScriptRoot: path
  "browse [--scriptPath=<tode-path>] sender [#]<selector>"

  | selector |
  selector := (self resolveSelector: selectorToken) asSymbol.
  ^ (TDLeafNodeBrowser new
    topez: topez;
    messagePattern: selector asString;
    windowLabel: 'Senders of ' , selector printString , ' for' , path;
    leafNodesBlock: [ self findSender: selectorToken searchScriptRoot: path ];
    yourself) open