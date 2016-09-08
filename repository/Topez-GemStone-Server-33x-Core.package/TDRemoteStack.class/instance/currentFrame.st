as yet unclassified
currentFrame
  frames
    ifNil: [ 
      "currentFrame may be set while lazily building frames"
      self frames ].
  currentFrame
    ifNil: [ 
      self frames size == 0
        ifTrue: [ 
          ^ TDRemoteStackFrame new
            stack: self;
            session: self session;
            yourself ].
      currentFrame := self frames at: 1 ].
  ^ currentFrame