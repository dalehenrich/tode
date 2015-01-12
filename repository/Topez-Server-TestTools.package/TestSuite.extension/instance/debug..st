*topez-server-testtools
debug: aResult
  self tests
    do: [ :each | 
      self sunitChanged: each.
      each debug: aResult ]