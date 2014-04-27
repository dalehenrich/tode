cls
clsaccessors
  "
  cls accessors [--instance][--class][--force][--getters][--setters]
                [--arg=<setter-arg-name>][--protocol=<protocol-name>] 
                ( <class-name> | @<class-path> )...
"

  | theClass setters getters results argName protocol block |
  self
    getSubcommandOptsMixedLongShort:
      {#('arg' nil #'required').
      #('class' nil #'none').
      #('force' nil #'none').
      #('getters' nil #'none').
      #('instance' nil #'none').
      #('protocol' nil #'required').
      #('setters' nil #'none')}.
  setters := getters := false.
  subOptions
    at: 'setters'
    ifPresent: [ :x | 
      setters := true.
      subOptions at: 'getters' ifPresent: [ :y | getters := true ] ]
    ifAbsent: [ 
      subOptions
        at: 'getters'
        ifPresent: [ :y | 
          getters := true.
          subOptions at: 'setters' ifPresent: [ :y | setters := true ] ]
        ifAbsent: [ 
          "neither specified, then both true by default"
          setters := getters := true ] ].
  protocol := subOptions
    at: 'protocol'
    ifPresent: [ :value | value ]
    ifAbsent: [ 'accessing' ].
  argName := subOptions
    at: 'arg'
    ifPresent: [ :value | value ]
    ifAbsent: [ 'anObject' ].
  results := Set new.
  block := [ :aClass | 
  results
    addAll:
      (self
        clsaccessors: aClass
        setters: setters
        getters: getters
        argName: argName
        protocol: protocol
        force: (subOptions includesKey: 'force')) ].
  subArguments
    do: [ :clsRef | 
      theClass := self resolveClassReference: clsRef.
      subOptions
        at: 'class'
        ifPresent: [ :classIgnored | 
          subOptions at: 'instance' ifPresent: [ :ignored | block value: theClass ].
          block value: theClass class ]
        ifAbsent: [ block value: theClass ] ].
  ^ results