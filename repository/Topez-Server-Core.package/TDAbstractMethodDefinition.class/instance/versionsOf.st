as yet unclassified
versionsOf
  ^ (MethodVersionHistory uniqueInstance
    versionsOfMethod: self selector
    in: self theBehavior)
    collect: [ :methodVersionRecord | TDMethodVersionDefinition new methodVersionRecord: methodVersionRecord ]