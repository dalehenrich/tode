as yet unclassified
clientEntryListColumnLabels
  | list |
  list := Array new.
  list
    add: '                %     %                    Parent';
    add: '             self total  total  local Method';
    add: 'tally total  Time  Time     ms    %        Child';
    add: '----- ----- ----- -----  -----  ----- -----------'.
  ^ list