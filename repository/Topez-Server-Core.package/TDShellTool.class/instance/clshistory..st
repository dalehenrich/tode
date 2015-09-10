cls
clshistory: theClass
  ^ theClass classHistory
    collect: [ :cls | TDClassHistoryDefinition theClass: cls ]