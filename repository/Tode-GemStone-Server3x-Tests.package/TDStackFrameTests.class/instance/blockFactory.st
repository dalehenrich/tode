accessing
blockFactory
  ^ blockFactory ifNil: [ blockFactory := TDStackFrameTestBlockFactory new ]