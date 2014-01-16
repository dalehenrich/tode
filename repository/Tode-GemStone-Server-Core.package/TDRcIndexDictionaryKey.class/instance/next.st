lookup
next
  | next |
  next := self value.
  next ifNil: [ ^ nil ].
  ^ TDRcIndexDictionaryKey new
    indexDictionary: self indexDictionary;
    object: next;
    pathTerm: self pathTerm;
    yourself