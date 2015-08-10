browse
browsesymbolDict
  "
  browse symbolDict [--hier] [--user=<user-id>] <symbol-dictionary-name>
  browse symbolDict [--hier] --user=<user-id>
  browse symbolDict --list [--user=<user-id>] 
  browse symbolDict --globals [--user=<user-id>] <symbol-dictionary-name>
"

  | block label pattern username symbolList |
  self
    getSubcommandOptsMixedLongShort:
      {#('hier' nil #'none').
      #('list' nil #'none').
      #('globals' nil #'none').
      #('user' nil #'required')}.
  subOptions
    at: 'user'
    ifPresent: [ :user | 
      username := user.
      symbolList := (AllUsers userWithId: username) symbolList ]
    ifAbsent: [ 
      | session |
      session := GsCurrentSession currentSession.
      username := session userProfile userId.
      symbolList := session symbolList ].
  subOptions
    at: 'list'
    ifPresent: [ :ignored | ^ self inspectSymbolDictList: symbolList ].
  subOptions
    at: 'globals'
    ifPresent: [ :ignored | ^ self inspectSymbolListGlobals: symbolList ].
  pattern := ''.
  label := 'Classes in symbol dictionary'.
  subArguments isEmpty
    ifTrue: [ label := 'Classes for user ' , username ].
  subArguments do: [ :arg | pattern := pattern , ' ' , arg ].
  block := [ self findSymbolDict ].
  ^ self browseClassesBlock: block label: label , pattern