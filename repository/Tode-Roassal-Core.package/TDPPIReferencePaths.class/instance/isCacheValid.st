testing
isCacheValid
  ^ self searchObjectMap value isNil not and: [ self searchResult isNil not ]