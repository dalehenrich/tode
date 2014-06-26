private
testCasesAtResultSlot
  ^ (self testCasesAtSlot: self resultSlot) asArray
    sorted: [ :a :b | a printString <= b printString ]