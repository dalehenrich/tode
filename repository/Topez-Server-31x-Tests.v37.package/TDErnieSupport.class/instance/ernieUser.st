accessing
ernieUser
  ^ ernieUser ifNil: [ ernieUser := self getNewUser ]