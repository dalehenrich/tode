browse
browseLeafNodes: leafNodeBlock pattern: pattern label: label
  | browser |
  browser := TDLeafNodeBrowser new
    topez: topez;
    messagePattern: pattern;
    windowLabel: label;
    leafNodesBlock: leafNodeBlock;
    yourself.
  browser open.
  ^ browser leafNodes