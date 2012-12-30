accessing
listKeystroke: event
  event keyCharacter = Character arrowUp
    ifTrue: [ ^ self listKeystrokeUp ].
  event keyCharacter = Character arrowDown
    ifTrue: [ ^ self listKeystrokeDown ].
  event keyCharacter = Character arrowLeft
    ifTrue: [ ^ self listKeystrokeLeft ].
  event keyCharacter = Character arrowUp
    ifTrue: [ ^ self listKeystrokeUp ].
  (event anyModifierKeyPressed
    and: [ #($B $C $K $L $N $b $c $m $n $o $p $t $u $j $k $v $x) includes: event keyCharacter ])
    ifTrue: [ self halt ]