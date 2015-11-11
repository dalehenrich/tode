cls
clscategory
  "
  cls category <class-category> ( <class-name> | @<class-path> )...
"

  | classes category |
  self getSubcommandOptsMixedLongShort: {}.
  category := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument <class-category>. See `man cls category` for details.' ].
  classes := Set new.
  2 to: subArguments size do: [ :index | 
    | clsRef theClass comment |
    clsRef := subArguments at: index.
    theClass := self resolveClassReference: clsRef.
    classes add: theClass.
    theClass category: category ].
  ^ classes