as yet unclassified
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ {#('step into' $j #'dbStepInto').
  #('step over' $o #'dbStepOver').
  #('step thru' $t #'dbStepThru').
  #('-').
  #('stack up' $k #'dbUp').
  #('stack down' $j #'dbDown').
  #('-').
  #('continue' nil #'dbContinue').
  #('restart' nil #'dbRestart').
  #('-')} , self methodMenuActionSpec , {#('-')} , self standardMenuActionSpec