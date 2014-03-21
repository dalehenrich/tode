as yet unclassified
clientList: listElement
  | list |
  list := Array new.
  list
    add: '          %      %                    Parent';
    add: '       self  total  total  local Method';
    add: 'tally  Time   Time     ms    %        Child';
    add: '-----  ---- ------  -----  ----- -----------'.
  self object parentEntry ifNotNil: [ list add: '<<<' ].
  (self object parents asArray sort: [ :a :b | a total >= b total ])
    do: [ :entry | list add: entry printParentString ].
  list add: self object printSenderString.
  (self object children asArray sort: [ :a :b | a total >= b total ])
    do: [ :entry | list add: entry printChildString ].
  ^ list -> nil