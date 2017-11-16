accessing
argAndTempNames
  ^ argAndTempNames ifNil: [ argAndTempNames := super argAndTempNames
        select: [ :each | (each asString at: 1) ~= $. ] ]