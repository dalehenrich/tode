*tode-gemstone-server-core
printStringTodeLimitedTo: limit
  "Answer a String whose characters are a description of the receiver.
	If you want to print without a character limit, use orintString."

  | stream res set |
  stream := WriteStream on: String new.
  set := IdentitySet new.
  stream nextPutAll: self class name describeClassName.
  stream nextPutAll: '( '.
  1 to: (self size min: limit) do: [ :index | 
    (self at: index) printOn: stream recursionSet: set.
    stream nextPutAll: ', ' ].
  stream nextPut: $).
  res := stream contents.
  res size <= limit
    ifTrue: [ ^ res ].
  ^ (res copyFrom: 1 to: limit - 3) , '...'