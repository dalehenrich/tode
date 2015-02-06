tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | item |
  index == 0
    ifTrue: [ ^ true ].
  item := self menuMapList at: index.
  (self menuCommandMap at: item trimBoth ifAbsent: [  ])
    ifNotNil: [ :ar | 
      | command |
      command := ar at: 1.
      (listElement topez commands at: command ifAbsent: [  ])
        ifNil: [ 
          (item trimBoth printString , ' not implemented by tODE.') asText allBold
            editUsing:
              ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
                windowName: #'manPage';
                windowLabel: item trimBoth;
                yourself) ]
        ifNotNil: [ :commandNode | 
          | page |
          listElement topez setFindText: (ar at: 2) isRegex: false.
          page := commandNode manPage.
          (page subCommands notEmpty and: [ ar size > 2 ])
            ifTrue: [ page := page subCommands at: (ar at: 3) ifAbsent: [ page ] ].
          page view: listElement topez ] ].
  ^ true