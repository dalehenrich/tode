*tode-gemstone-server-core
printStringTodeLimitedTo: limit
  "Answer a String whose characters are a description of the receiver.
	If you want to print without a character limit, use orintString."

  | stream res set sz count |
  stream := WriteStream on: String new.
  set := IdentitySet new.
  stream nextPutAll: self class name describeClassName.
  stream nextPutAll: '( '.
  sz := self size.
  count := 0.
  self keysDo: [ :aKey | stream position > limit
        ifTrue: [ stream nextPutAll: '...)'.
          res := stream contents.
          res size <= limit
            ifTrue: [ ^ res ].
          ^ (res copyFrom: 1 to: limit - 3) , '...' ].
      stream nextPutAll: (aKey printStringTodeLimitedTo: limit).
      count := count + 1.
      count < sz
        ifTrue: [ stream nextPutAll: ', ' ] ].
  stream nextPut: $).
  res := stream contents.
  res size <= limit
    ifTrue: [ ^ res ].
  ^ (res copyFrom: 1 to: limit - 3) , '...'