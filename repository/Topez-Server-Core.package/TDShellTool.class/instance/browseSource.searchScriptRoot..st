as yet unclassified
browseSource: regexPattern searchScriptRoot: path
  "browse [--scriptPath=<tode-path>] source <regex-pattern>"

  ^ (TDLeafNodeBrowser new
    topez: topez;
    messagePattern: regexPattern;
    messagePatternIsRegex: true;
    windowLabel: 'Source matches of ' , regexPattern , ' for' , path;
    leafNodesBlock: [ self findSource: regexPattern searchScriptRoot: path ];
    yourself) open