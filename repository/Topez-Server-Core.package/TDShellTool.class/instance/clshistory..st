cls
clshistory: theClass
  ^ theClass classHistory
    withIndexCollect: [ :cls :index | TDClassHistoryDefinition className: cls name classHistoryIndex: index ]