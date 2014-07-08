accessing
listBlock
  ^ [ :listElement | STON toString: (self clientList: listElement) ]