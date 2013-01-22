as yet unclassified
currentFrame
  currentFrame
    ifNil: [ 
      self frames size == 0
        ifTrue: [ 
          ^ TDStackFrame new
            stack: self;
            yourself ].
      currentFrame := self frames at: 1 ].
  ^ currentFrame