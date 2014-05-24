as yet unclassified
clientList: listElement
  ^ (self object objectLog collect: [ :objectLogEntry | objectLogEntry label ])
    -> nil