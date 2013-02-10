as yet unclassified
mmlist
  "mm list [<config> [<config> ... ]]"

  | configNames registrations |
  configNames := tokens size = 1
    ifTrue: [ 
      | registry |
      registry := MetacelloProjectRegistration registry.
      (registry configurationRegistry values , registry baselineRegistry values
        collect: [ :each | each projectName ]) asSet asArray ]
    ifFalse: [ tokens copyFrom: 2 to: tokens size ].
  registrations := configNames
    collect: [ :configName | self getRegistrationFor: configName ].
  ^ registrations sort: [ :a :b | a projectName <= b projectName ]