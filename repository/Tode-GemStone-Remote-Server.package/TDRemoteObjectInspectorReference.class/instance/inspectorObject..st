accessing
inspectorObject: dispayLimit
  ^ inspectorObject
    ifNil: [ 
      | stonString attributeDict |
      stonString := self session
        executeBlock: [ :anOop :limit | 
          | frameContents stream |
          frameContents := TDRemoteInspectorObject
            forObjectWithOop: anOop
            limit: limit.
          stream := WriteStream on: String new.
          frameContents printJsonOn: stream.
          stream contents ]
        with: self objectOop
        with: dispayLimit.
      attributeDict := STON fromString: stonString.
      inspectorObject := attributeDict ]