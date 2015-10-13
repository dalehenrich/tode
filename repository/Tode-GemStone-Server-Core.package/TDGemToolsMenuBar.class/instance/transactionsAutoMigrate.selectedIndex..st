menu actions
transactionsAutoMigrate: listElement selectedIndex: index
  | tool |
  tool := self topez toolInstanceFor: 'limit'.
  tool limitAutoMigrate: tool limitAutoMigrate not.
  ^ true