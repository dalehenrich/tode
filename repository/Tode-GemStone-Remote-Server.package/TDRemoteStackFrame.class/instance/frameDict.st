private
frameDict
  ^ (self dynamicInstVarAt: #'frameDict')
    ifNil: [ 
      | stonString frameDict |
      stonString := self session
        executeBlock: [ :processOop :frameIndex | 
          | frameContents stream |
          frameContents := TDRemoteFrameContents
            forProcessWithOop: processOop
            frameIndex: frameIndex.
          stream := WriteStream on: String new.
          frameContents printJsonOn: stream.
          stream contents ]
        with: self processOop
        with: self frameIndex.
      frameDict := STON fromString: stonString.
      self dynamicInstVarAt: #'frameDict' put: frameDict ]