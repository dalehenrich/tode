*topez-server-testtools
debugCase: aTestCase
  [ 
  [ 
  aTestCase runCase.
  passed add: aTestCase ]
    sunitOn: self class failure
    do: [ :signal | 
      failures add: aTestCase.
      signal pass ] ]
    sunitOn: self class error
    do: [ :signal | 
      errors add: aTestCase.
      signal pass ]