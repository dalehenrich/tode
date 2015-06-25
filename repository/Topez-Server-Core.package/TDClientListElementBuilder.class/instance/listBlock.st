accessing
listBlock
  ^ [ :listElement | listElement objectSerializer toString: (self clientList: listElement) ]