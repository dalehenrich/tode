menu actions
toolProcessBrowser: listElement selectedIndex: index
  | psTool |
  psTool := self topez toolInstanceFor: 'ps'.
  psTool pslist.
  ^ true