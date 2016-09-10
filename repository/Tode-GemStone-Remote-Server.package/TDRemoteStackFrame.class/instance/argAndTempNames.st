private
argAndTempNames
  ^ argAndTempNames
    ifNil: [ argAndTempNames := self frameDict at: 'argAndTempNames' ]