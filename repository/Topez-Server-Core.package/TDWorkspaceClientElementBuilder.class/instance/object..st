accessing
object: aStringOrObject
  workspace
    ifNil: [ workspace := aStringOrObject ]
    ifNotNil: [ object := aStringOrObject ]