command prompt
isMorphic
  ^ (Smalltalk respondsTo: #'isMorphic') not or: [ Smalltalk isMorphic ]