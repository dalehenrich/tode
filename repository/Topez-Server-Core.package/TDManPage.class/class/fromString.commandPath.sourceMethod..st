as yet unclassified
fromString: manPageString commandPath: commandPath sourceMethod: sourceMethod
  "see http://pubs.opengroup.org/onlinepubs/009695399/basedefs/xbd_chap12.html for tips on documenting command syntax"

  | manPage |
  manPage := self fromString: manPageString.
  commandPath notNil
    ifTrue: [ manPage commandPath: commandPath ].
  sourceMethod notNil
    ifTrue: [ manPage sourceMethod: sourceMethod ].
  ^ manPage