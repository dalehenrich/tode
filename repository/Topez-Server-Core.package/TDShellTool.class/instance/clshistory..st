cls
clshistory: theClass
  ^ theClass classHistory
    collect: [ :cls | TDClassHistoryDefinition theClass: cls className: cls name asString ]