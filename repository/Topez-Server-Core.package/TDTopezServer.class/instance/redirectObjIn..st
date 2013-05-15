accessing
redirectObjIn: aRedirectTarget
  "objIn gets stashed in aRedirectTarget"

  | node |
  aRedirectTarget ifNil: [ ^ self ].
  node := objIn value
    asTDObjectNode: self currentNode
    topez: self
    aspect: #'view'.
  node name: aRedirectTarget.
  self currentNode addChildNode: node.
  redirectTarget := nil