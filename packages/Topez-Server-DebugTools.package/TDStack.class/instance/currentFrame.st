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
          ^ TDStackFrame new
            stack: self;
            yourself ].
      currentFrame := self frames at: 1 ].
  ^ currentFrame