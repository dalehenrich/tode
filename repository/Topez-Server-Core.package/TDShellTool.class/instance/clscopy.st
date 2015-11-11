cls
clscopy
  "
  cls copy [--category=<class-category>] ( <class-name> | @<class-path> ) 
           <new-class-name>
"

  | theClass clsName newName category |
  self getSubcommandOptsMixedLongShort: {#('category' nil #'required')}.
  clsName := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument ( <class-name> | @<class-path> ). See `man cls copy` for details.' ].
  theClass := self resolveClassReference: clsName.
  newName := subArguments
    at: 2
    ifAbsent: [ 
      self
        error:
          'Missing required argument <new-class-name>. See `man cls copy` for details.' ].
  subOptions
    at: 'category'
    ifPresent: [ :cat | category := cat ]
    ifAbsent: [ category := theClass category ].
  ^ self clscopy: theClass to: newName category: category