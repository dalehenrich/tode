accessing
externalGsUser
  ^ externalGsUser ifNil: [ externalGsUser := self getNewExternalGsUser ]