ol
olView: objectLogBlock reversed: reversed label: label
  ^ (TDObjectLogEntryBrowser new
    topez: self topez;
    reversed: reversed;
    objectLogBlock: objectLogBlock;
    windowLabel: label;
    yourself) open