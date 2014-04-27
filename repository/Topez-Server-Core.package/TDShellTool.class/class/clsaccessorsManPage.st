cls
clsaccessorsManPage
  | manPage |
  manPage := TDManPage
    commandName: 'accessors'
    fromString:
      'NAME
  cls accessors - Define instance variable getter and setter methods for the class

SYNOPSIS
  cls accessors [--instance][--class][--force][--getters][--setters]
                [--arg=<setter-arg-name>][--protocol=<protocol-name>] 
                ( <class-name> | @<class-path> )...

DESCRIPTION
  The `cls accessors` command defines getter and setter methods for the given classes.

  If no options are specified, the getter and setter methods will be defined for the
  instance variables of the class.

  If the --instance option is present, the getter and setter methods will be defined 
  for the instance variables of the class.

  If the --class option is present, the getter and setter methods will be defined 
  for the class instance variables of the class.

  If both options are present, then the getter and setter methods will be defined
  for the instance variables and class instance variables of the class.

  If the --getters option is present then only the getter methods will be defined.

  If the --setters option is present then only the setter methods will be defined.

  The --arg option is used to define a custom argument name to be used for the 
  setter methods. If the --arg option is absent, `anObject` is used.

  The --protocol options is used to define the name of the protocol in which the
  methods are defined. If the --protocol argument is not specified, then the methods
  are defined in the `accessing` protocol.

  By default, if a method already exists that matches the name of the generated 
  method, a new method will not be created. However, if the --force option is
  present a new method will always be created.

OPTIONS
  --arg=<setter-arg-name>]
    Define the setter argument name. Default argument name is `anObject`.

  --class
    Define getters and setters for class instance variables.

  --force
    Always create a new method, whether or not a method with the same name
    has already been defined.

  --getters
    Define only the missing getter methods.

  --instance
    Define getters and setters for instance variables.

  --protocol=<protocol-name>
    Define the protocol in which the new methods will be defined. Default
    protocol is `accessing`.

  --setters
    Define only the missing setter methods.

EXAMPLES
  cls accessors ClassA ClassB ClassC
  cls accessors --class --instance ClassA
  cls accessors --class --force ClassA
  cls accessors --arg=aBool --protocol=Updating --setters ClassA
'.
  ^ manPage