accessing
username
  username ifNil: [ ^ GsCurrentSession currentSession userProfile userId ].
  ^ super username