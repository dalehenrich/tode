manPages
methodManPage
  | manPage |
  manPage := TDManPage
    commandName: 'method'
    fromString:
      'NAME
  method - method management

SYNOPSIS
  method [--help] <command> [args]

DESCRIPTION

  Commands:
    browse   Browse method source
    copy     Copy method to another class
    move     Move method to another class
    protocol Move method to another protocol
    remove   Remove method
    versions Open window on method versions 

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.

EXAMPLES
  method browse Dictionary>>at:put: `Dictionary class>>new:`

  method copy Dictionary>>at:put: @/home/xxDictionary
  method copy --class Dictionary>>at:put: XXDictionary

  method move Dictionary>>at:put: XXDictionary
  method move --class Dictionary>>at:put: XXDictionary

  method protocol accessing Dictionary>>at:put: Dictionary>>at:
'.
  manPage subCommands
    at: 'browse' put: self methodbrowseManPage;
    at: 'protocol' put: self methodprotocolManPage;
    at: 'copy' put: self methodcopyManPage;
    at: 'move' put: self methodmoveManPage;
    yourself.
  ^ manPage