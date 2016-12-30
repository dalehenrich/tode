accessing
next: aFrame
  true
    ifTrue: [ ^ super next: aFrame ].
  aFrame ifNotNil: [ aFrame frameIndex = 8
        ifTrue: [ self halt ] ].
  next := aFrame