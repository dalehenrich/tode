private
inClassName
  ^ (self frameDict at: 'inClassName') ifNil: [ '' ]