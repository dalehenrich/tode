as yet unclassified
findVersions: methodSpec
  | method |
  method := self parseMethodSpec: methodSpec.
  ^ (MethodVersionHistory uniqueInstance
    versionsOfMethod: method selector
    in: method inClass)
    collect: [ :methodVersionRecord | TDMethodVersionDefinition new methodVersionRecord: methodVersionRecord ]