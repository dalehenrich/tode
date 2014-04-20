tools
clientList: miniTool listElement: listElement
  | list pages |
  theMiniTool := miniTool.
  pages := self manPagesBlock value.
  list := OrderedCollection new.
  manPages := OrderedCollection new.
  pages := pages sorted: [ :a :b | a commandName <= b commandName ].
  pages
    do: [ :manPage | 
      | subCommands |
      manPages add: manPage.
      list add: manPage summary.
      (manPage subCommands values
        sorted: [ :a :b | a commandName <= b commandName ])
        do: [ :subManPage | 
          manPages add: subManPage.
          list add: '  ' , subManPage summary ] ].
  ^ list asArray -> nil