*topez-server-testtools
testSelectors
  ^ self sunitSelectors
    select: [ :each | ('test*' sunitMatch: each) and: [ each numArgs == 0 ] ]