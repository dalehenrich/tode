instance creation
className: className isMeta: isMeta protocol: protocol classHistoryIndex: classHistoryIndex
  ^ (super className: className isMeta: isMeta protocol: protocol)
    classHistoryIndex: classHistoryIndex;
    yourself