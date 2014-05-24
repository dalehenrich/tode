*topez-server-24x-core
sortClasses: aCollection
  ^ SortedCollection
    withAll: aCollection
    sortBlock: [ :x :y | x name <= y name ]