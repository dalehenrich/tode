cls
clsprotocol
  "
  cls protocol [--class] --add=<class-name> <protocol>...
  cls protocol [--class] --remove=<class-name> <protocol>...
  cls protocol [--class] --rename=<class-name> (<old=protocol> <new=protocol>)... 
"

  | theBehavior isMeta |
  self
    getSubcommandOptsMixedLongShort:
      {#('add' nil #'required').
      #('class' nil #'none').
      #('remove' nil #'required').
      #('rename' nil #'required')}.
  isMeta := false.
  subOptions at: 'class' ifPresent: [ :ignored | isMeta := true ].
  subOptions
    at: 'add'
    ifPresent: [ :clsName | 
      theBehavior := self resolveClassReference: clsName.
      isMeta
        ifTrue: [ theBehavior := theBehavior class ].
      self protocol: theBehavior add: subArguments.
      ^ self ].
  subOptions
    at: 'remove'
    ifPresent: [ :clsName | 
      theBehavior := self resolveClassReference: clsName.
      isMeta
        ifTrue: [ theBehavior := theBehavior class ].
      self protocol: theBehavior remove: subArguments.
      ^ self ].
  subOptions
    at: 'rename'
    ifPresent: [ :clsName | 
      theBehavior := self resolveClassReference: clsName.
      isMeta
        ifTrue: [ theBehavior := theBehavior class ].
      1 to: subArguments size by: 2 do: [ :index | 
        self
          protocol: theBehavior
          rename: (subArguments at: index)
          to: (subArguments at: index + 1) ] ]