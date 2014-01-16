as yet unclassified
keys
  keys
    ifNil: [ 
      | collBkt indexDictionary |
      keys := Array new.
      indexDictionary := self object.
      1 to: indexDictionary _basicSize do: [ :i | 
        collBkt := indexDictionary _at: i.
        1 to: collBkt numElements do: [ :j | 
          | child parent pathTerm key value |
          child := collBkt keyAt: j.
          parent := collBkt valueAt: j.
          pathTerm := collBkt termAt: j.
          key := TDRcIndexDictionaryKey new
            indexDictionary: indexDictionary;
            object: child;
            pathTerm: pathTerm;
            yourself.
          value := TDRcIndexDictionaryKey new
            indexDictionary: indexDictionary;
            object: parent;
            pathTerm: pathTerm;
            yourself.
          keys
            addLast:
              key
                ->
                  {('value' -> value).
                  ('next' -> value next)} ] ] ].
  ^ keys