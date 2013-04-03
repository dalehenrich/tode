as yet unclassified
mmlist
  "mm list [<config> [<config> ... ]]"

  | configNames registrations list displayPolicy stream |
  configNames := tokens size = 1
    ifTrue: [ 
      | registry |
      registry := MetacelloProjectRegistration registry.
      (registry configurationRegistry values , registry baselineRegistry values
        collect: [ :each | each projectName ]) asSet asArray ]
    ifFalse: [ tokens copyFrom: 2 to: tokens size ].
  registrations := configNames
    collect: [ :configName | self getRegistrationFor: configName ].
  list := registrations sort: [ :a :b | a projectName <= b projectName ].
  displayPolicy := topez displayPolicy
    compacted: true;
    yourself.
  stream := displayPolicy stream.
  list
    do: [ :pkg | 
      pkg displayOn: displayPolicy.
      stream cr ].
  ^ TDCommandResult new
    displayText: stream contents;
    resultObject: list;
    yourself