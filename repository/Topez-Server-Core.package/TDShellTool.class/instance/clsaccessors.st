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
  self options
    at: 'setters'
    ifPresent: [ :x | 
      setters := true.
      options at: 'getters' ifPresent: [ :y | getters := true ] ]
    ifAbsent: [ 
      options
        at: 'getters'
        ifPresent: [ :y | 
          getters := true.
          options at: 'setters' ifPresent: [ :y | setters := true ] ]
        ifAbsent: [ 
          "neither specified, then both true by default"
          setters := getters := true ] ].
  protocol := options
    at: 'protocol'
    ifPresent: [ :value | value ]
    ifAbsent: [ 'accessing' ].
  argName := options
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
        force: (options includesKey: 'force')) ].
  subArguments
    do: [ :clsRef | 
      theClass := self resolveClassReference: clsRef.
      options
        at: 'class'
        ifPresent: [ :classIgnored | 
          self options at: 'instance' ifPresent: [ :ignored | block value: theClass ].
          block value: theClass class ]
        ifAbsent: [ block value: theClass ] ].
  ^ results