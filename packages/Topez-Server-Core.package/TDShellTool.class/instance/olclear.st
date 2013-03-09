as yet unclassified
olclear
  "ol clear [ <priority-list> ]"

  | priorities tdObjectLog theObjectLog |
  tdObjectLog := TDObjectLog new.
  tokens size > 1
    ifTrue: [ 2 to: tokens size do: [ :index | priorities priority: (ObjectLogEntry perform: (tokens at: index) asSymbol) ] ].
  tdObjectLog priorites isEmpty
    ifTrue: [ 
      "clear all - most efficient to simply reset the collections"
      ObjectLogEntry initialize.
      ^ true ].
  theObjectLog := ObjectLogEntry objectlog.
  tdObjectLog objectLog do: [ :entry | theObjectLog remove: entry ].
  ^ true