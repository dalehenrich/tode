commands
manAll
  | manPages browser |
  browser := TDManPageBrowser new
    topez: topez;
    windowLabel: 'All man pages';
    windowName: #'manPageAll';
    manPagesBlock: [ self topez commands values collect: [ :cmd | cmd manPage ] ];
    yourself.
  browser open.
  ^ browser manPages