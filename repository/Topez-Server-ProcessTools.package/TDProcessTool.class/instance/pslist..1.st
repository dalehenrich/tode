as yet unclassified
pslist
  "ps list"

  ^ (TDProcessBrowser new
    topez: topez;
    processTool: self;
    windowLabel: 'Process Browser';
    yourself) open