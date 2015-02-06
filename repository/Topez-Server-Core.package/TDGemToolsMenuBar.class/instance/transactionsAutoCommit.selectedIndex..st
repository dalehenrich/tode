menu actions
transactionsAutoCommit: listElement selectedIndex: index
  | tool |
  tool := self topez toolInstanceFor: 'limit'.
  tool limitAutoCommit: tool limitAutoCommit not.
  ^ true