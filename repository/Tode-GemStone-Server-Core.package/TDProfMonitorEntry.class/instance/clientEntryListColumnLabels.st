as yet unclassified
clientEntryListColumnLabels
  | list |
  list := Array new.
  self fullEntryReport
    ifTrue: [ 
      list
        add: '                %     %                   Parent';
        add: '             self total      total local Method';
        add: 'tally total  Time  Time         ms   %        Child';
        add: '----- ----- ----- ----- ---------- ----- -----------' ]
    ifFalse: [ 
      list
        add: '                       Parent';
        add: '            local Method';
        add: 'tally total   %        Child';
        add: '----- ----- ----- -----------' ].
  ^ list