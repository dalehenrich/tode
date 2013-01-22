as yet unclassified
clientList: listElement
  ^ self object frames withIndexCollect: [ :frame :index | index asString , '. ' , frame printString ]