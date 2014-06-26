private
testCasesAtSlot: slotIndex
  slotIndex == 2
    ifTrue: [ ^ tests ].
  slotIndex == 3
    ifTrue: [ ^ run ].
  slotIndex == 4
    ifTrue: [ ^ expectedPasses ].
  slotIndex == 5
    ifTrue: [ ^ expectedDefects ].
  slotIndex == 6
    ifTrue: [ ^ unexpectedFailures ].
  slotIndex == 7
    ifTrue: [ ^ unexpectedErrors ].
  slotIndex == 8
    ifTrue: [ ^ unexpectedPasses ].
  self error: 'should not get here'