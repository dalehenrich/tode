as yet unclassified
clientList: listElement
  | header |
  header := self object clientListHeading.
  headerSize := header size.
  clientList := self object clientListEntries.
  ^ (header , (clientList collect: [ :entry | entry printSampleString ])) -> nil