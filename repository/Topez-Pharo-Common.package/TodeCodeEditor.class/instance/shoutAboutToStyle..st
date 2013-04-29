styling
shoutAboutToStyle: aPluggableShoutMorphOrView
  self clientElement ifNil: [ ^ false ].
  ^ self clientElement shoutAboutToStyle: aPluggableShoutMorphOrView