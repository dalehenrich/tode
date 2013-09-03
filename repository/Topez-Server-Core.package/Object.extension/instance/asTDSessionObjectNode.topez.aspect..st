*topez-server-core
asTDSessionObjectNode: parentNode topez: aTopez aspect: anAspect
  "Create a node with a non-persisent connection to self ..."

  ^ aTopez buildSessionNode: parentNode for: self aspect: anAspect