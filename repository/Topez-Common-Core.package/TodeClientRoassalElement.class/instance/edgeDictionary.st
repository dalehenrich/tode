accessing
edgeDictionary
  edgeDictionary
    ifNil: [ edgeDictionary := self topez getEdgeDictionaryForClientListElement: self ].
  ^ edgeDictionary