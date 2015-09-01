*topez-server-core
timestamp
  timestamp ifNil: [ timestamp := DateAndTime now ].
  ^ timestamp