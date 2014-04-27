cls
clscopy
  "
  cls copy [--category=<class-category>] ( <class-name> | @<class-path> ) 
           <new-class-name>
"

  | theClass clsName newName category |
  self getSubcommandOptsMixedLongShort: {#('category' nil #'reguired')}.
  clsName := subArguments at: 1.
  theClass := self resolveClassReference: clsName.
  newName := subArguments at: 2.
  subOptions
    at: 'category'
    ifPresent: [ :cat | category := cat ]
    ifAbsent: [ category := theClass category ].
  ^ self clscopy: theClass to: newName category: category