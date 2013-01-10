initialization
login: gsPassword osUser: osUser osPassword: osPassword
  "don't use critical block ... yet"

  | result |
  self class gsCursor
    showWhile: [ 
      result := self library
        apiGciSetNet: stoneNRS
          a: osUser
          a: osPassword
          a: gemNRS;
        apiGciLogin: userID a: gsPassword.
      result
        ifTrue: [ 
          self class fullCompressionEnabled
            ifTrue: [ self library apiGciEnableFullCompression ].
          number := self library apiGciGetSessionId ] ].
  ^ result