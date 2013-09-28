as yet unclassified
clientList: listElement
  ^ self object profMonResults collect: [ :entry | entry printSampleString ]