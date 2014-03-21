as yet unclassified
clientList: listElement
  ^ ({('elapsed CPU time: ' , self object elapsedTime asString , ' ms').
  'tally     %  smpl%    ms class and method name'.
  '----- -----  ----- ----- ---------------------'}
    , (self object profMonResults collect: [ :entry | entry printSampleString ]))
    -> nil