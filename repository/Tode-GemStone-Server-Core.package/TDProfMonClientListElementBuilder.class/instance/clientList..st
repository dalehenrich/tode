as yet unclassified
clientList: listElement
  | header |
  header := self object clientListHeading
    ,
      {(self object sortKey , '     %  smpl%    ms class and method name').
      '----- -----  ----- ----- ---------------------'}.
  headerSize := header size.
  ^ (header , self object clientListEntries) -> nil