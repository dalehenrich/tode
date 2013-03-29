updating
update: something
  something == #'markInput'
    ifTrue: [ ^ self markInput ].
  something == #'doCommand'
    ifTrue: [ ^ self accept ].
  something == #'exit'
    ifTrue: [ 
      ^ self owner
        release;
        delete ].
  ^ super update: something