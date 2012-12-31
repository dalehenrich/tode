as yet unclassified
listBlock
  ^ [ :aTopez | STON toString: (self frames withIndexCollect: [ :frame :index | index asString , '. ' , frame printString ]) ]