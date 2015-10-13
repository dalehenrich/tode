menu actions
toolMonticelloBrowser: listElement selectedIndex: index
  | monticelloTool block |
  monticelloTool := self topez toolInstanceFor: 'mc'.
  block := [ monticelloTool mclist: '' ].
  monticelloTool mcBrowseWorkingCopies: block label: 'Working Copies'.
  ^ true