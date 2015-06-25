accessing
listBlock
  ^ [ :listElement | STON toUTF8EncodedString: (self clientList: listElement) ]