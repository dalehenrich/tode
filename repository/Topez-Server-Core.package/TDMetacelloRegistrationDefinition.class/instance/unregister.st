actions
unregister
  [ self registration unregisterProject ]
    on: Error
    do: [ :ignore | 
      "error signalled if registration does not exist ... that is cool"
       ]