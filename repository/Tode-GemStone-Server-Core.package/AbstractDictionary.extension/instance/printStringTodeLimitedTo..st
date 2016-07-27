*tode-gemstone-server-core
printStringTodeLimitedTo: limit
  "Answer a String whose characters are a description of the receiver.
	If you want to print without a character limit, use orintString."

  | count sz myCls stream set res |
  stream := WriteStream on: String new.
  set := IdentitySet new.
  myCls := self class.
  stream nextPutAll: myCls name describeClassName.
  (myCls whichClassIncludesSelector: #'associationsDo:') == AbstractDictionary
    ifTrue: [ ^ self	"can't safely execute associationsDo: " ].
  stream nextPutAll: '( '.
  count := 1.
  sz := self size.
  self
    associationsDo: [ :anAssoc | 
      stream position > limit
        ifTrue: [ 
          stream nextPutAll: '...)'.
          res := stream contents.
          res size <= limit
            ifTrue: [ ^ res ].
          ^ (res copyFrom: 1 to: limit - 3) , '...' ].
      anAssoc printOn: stream recursionSet: set.	"prevent infinite recursion when printing cyclic structures, and limit the size of result when printing large collections."
      count < sz
        ifTrue: [ stream nextPutAll: ', ' ].
      count := count + 1 ].
  stream nextPut: $).
  res := stream contents.
  res size <= limit
    ifTrue: [ ^ res ].
  ^ (res copyFrom: 1 to: limit - 3) , '...'