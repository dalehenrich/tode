as yet unclassified
browseRegexSender: regexPattern searchScriptRoot: path
  "browse [--scriptPath=<tode-path>] rsender <regex-pattern>"

  ^ (TDLeafNodeBrowser new
    topez: topez;
    messagePattern: regexPattern;
    messagePatternIsRegex: true;
    windowLabel: 'Regex senders of ' , regexPattern , ' for' , path;
    leafNodesBlock: [ self findRegexSender: regexPattern searchScriptRoot: path ];
    yourself) open