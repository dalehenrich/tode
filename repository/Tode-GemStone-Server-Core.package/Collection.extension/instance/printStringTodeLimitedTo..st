*tode-gemstone-server-core
printStringTodeLimitedTo: limit
  "Answer a String whose characters are a description of the receiver.
	If you want to print without a character limit, use orintString."

  | stream res set sz |
  stream := WriteStream on: String new.
  set := IdentitySet new.
  stream nextPutAll: self class name describeClassName.
  stream nextPutAll: '( '.
  sz := self size.
  1 to: (sz min: limit) do: [ :index | 
    (self at: index) printOn: stream recursionSet: set.	"prevent infinite recursion when printing cyclic structures, and limit the size of result when printing large collections."
    index < sz
      ifTrue: [ stream nextPutAll: ', ' ] ].
  stream nextPut: $).
  res := stream contents.
  res size <= limit
    ifTrue: [ ^ res ].
  ^ (res copyFrom: 1 to: limit - 3) , '...'