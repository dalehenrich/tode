as yet unclassified
findVersions: methodSpec
  | method |
  method := self methodFromMethodSpec: methodSpec.
  ^ (MethodVersionHistory uniqueInstance
    versionsOfMethod: method selector
    in: method inClass)
    collect: [ :methodVersionRecord | TDMethodVersionDefinition new methodVersionRecord: methodVersionRecord ]